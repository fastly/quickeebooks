# Quickeebooks

Integration with Quickbooks Online via the Intuit Data Services REST API.

This library communicates with the Quickbooks Data Services `v2` API, documented at:

[Data Services v2](https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services)

When Intuit finalizes the `v3` API I would like to move to that version as it appears to be better structured
and has `JSON` request/response formats, which should be easier to work with than XML.

## Requirements

This is being developed on Ruby 1.9.2. Other versions/VMs are untested but Ruby 1.8 should work in theory.

## Dependencies

Gems:

* `oauth`
* `roxml` : Workhorse for (de)serializing objects between Ruby & XML
* `nokogiri` : XML parsing
* `active_model` : For validations

## Getting Started

This library assumes you already have an OAuth token and secret. You can then initialize your `OAuth Consumer` and create a `OAuth Client` via:

```ruby
QB_KEY = "your-qb-key"
QB_SECRET = "your-qb-secret"

qb_oauth_consumer = OAuth::Consumer.new(QB_KEY, QB_SECRET, {
    :site                 => "https://oauth.intuit.com",
    :request_token_path   => "/oauth/v1/get_request_token",
    :authorize_url        => "https://appcenter.intuit.com/Connect/Begin",
    :access_token_path    => "/oauth/v1/get_access_token"
})

oauth_client = OAuth::AccessToken.new(qb_oauth_consumer, access_token, access_secret)
```

## Quickbooks Online vs Windows

IDS provides 2 APIs, one for interacting with Quickbooks Online resources and one for Quickbooks Windows resources. 

See: https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services

As of this time Quickeebooks has a little more features for Online API vs Windows API. Ultimately the Quickeebooks API should be the same and its just a matter of instantiating the correct classes.

For example:

```ruby
# Instantiate a Online API
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customer_service.list 

# Instantiate a Windows API
customer_service = Quickeebooks::Windows::Service::Customer.new(oauth_client, realm_id)
customer_service.list 
```

All of the documentation below is geared towards the Online flavor but unless noted one should be able to replace it with Windows.

Now we can initialize any of the `Service` clients:

```ruby
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customer_service.list 

# returns a `Collection` object
```

See *Retrieving Objects* for the complete docs on fetching collections.

Quickbooks API requires that all HTTP operations are performed against a client-specific "Base URL", as discussed here:

[Getting the Base URL](https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services/0400_QuickBooks_Online/0100_Calling_Data_Services/0010_Getting_the_Base_URL)

Quickeebooks will attempt to determine the base URL for the given OAuth client and Realm. This comes at the cost of the overhead of making that initial request. A customers Base URL should not change so if you know it ahead of time then you can specify it as the third argument to the service constructor. For example:

```ruby
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id, "https://qbo.intuit.com/qbo36")
```

## Retrieving Objects

Use a `Service` sub-class to fetch objects of that resource and specifically use the `list` method.

The signature of the `list` method is:

```ruby
list(filters = [], page = 1, per_page = 20, sort = nil, options = {})
```

Where `filters` is an array of `Filter` objects (see below). Pagination is set to page 1 and 20 results per page by default.
Pass a `Sort` object for any desired sorting or just let Intuit use the default sorting for that resource (see below for more sorting options).

Specify none of these to get the defaults:

```ruby
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id,)
# fetch all customers with default parameters (pagination, sorting, filtering)
customers = customer_service.list
```

Return result: a `Collection` instance with properties: `entries`, `current_page`, `count` which should be self-explanatory.

### Filtering (currently only supported in the Online API)

All filters in the Intuit documentation are supported: text, datetime, boolean.

Construct an instance of `Quickeebooks::Online::Service::Filter` with the type of filter, one of: `:text`, `:datetime`, `:boolean`.

Pass an array of `Quickeebooks::Online::Service::Filter` objects as the first argument to the Services `list` method and all filters will be applied.

#### Filtering on a text field

Specify a type of `:text` and your desired `:field` and a `:value` clause which will enforce an exact match.

Note: the Intuit API is case-INSENSITIVE.

```ruby
Quickeebooks::Online::Service::Filter.new(:text, :field => 'FamilyName', :value => 'Richards')
```

#### Filtering on a Date/Time

Specify a type of `:datetime` and your desired `:field` than any combination of: `:before` and `:after`

Examples:

```ruby
# find all customers created after 2/15/2011
datetime = Time.mktime(2011, 2, 15)
Quickeebooks::Online::Service::Filter.new(:datetime, :field => 'CreateTime', :after => datetime)

# find all customers created before 3/28/2011
datetime = Time.mktime(2011, 2, 28)
Quickeebooks::Online::Service::Filter.new(:datetime, :field => 'CreateTime', :before => datetime)

# find all customers created between 1/1/2011 and 2/15/2011
after = Time.mktime(2011, 1, 1)
before = Time.mktime(2011, 2, 15
Quickeebooks::Online::Service::Filter.new(:datetime, :field => 'CreateTime', :after => after, :before => before)
```

#### Filtering on a Boolean field

Specify a type of `:boolean` and your desired `:field` and a `:value` with either `true` or `false`

```ruby
# find all customers and exclude jobs
Quickeebooks::Online::Service::Filter.new(:boolean, :field => 'IncludeJobs', :value => false)
```

#### Filtering on a Number

Specify a type of `:number` and an operator, one of: `:gt`, `:lt`, or `:eq`.

```ruby
# find all customers and exclude jobs
Quickeebooks::Online::Service::Filter.new(:number, :field => 'Amount', :gt => 150)
```

Once you have created all of your `Filters` than just pass an array of them to any services `list` method and they will all be applied.

Example: find all Customers with a last name of 'Richards' who have been created before Feb 25, 2012:

```ruby
filters = []
filters << Quickeebooks::Online::Service::Filter.new(:text, :field => 'FamilyName', :value => 'Richards')
datetime = Time.mktime(2011, 2, 25)
filters << Quickeebooks::Online::Service::Filter.new(:datetime, :field => 'CreateTime', :before => datetime)
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customers = customer_service.list(filters)
```
## Sorting (currently only supported in the Online API)

Create an instance of `Quickeebooks::Service::Sort` where the first argument is the field and the second is the sorting direction/logic.

See [Sorting and Pagination](https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services/0400_QuickBooks_Online/0100_Calling_Data_Services/0030_Retrieving_Objects#Sorting) for the complete set of sorting options.

Example

```ruby
sorter = Quickeebooks::Online::Service::Sort.new('FamilyName', 'AtoZ')
```

## Bringing it all together

Goal: fetch all customers with a last name of Smith starting at the first page with a per page size of 30, created between May and August of 2011 and sort by last name from A-to-Z.

```ruby
filters = []
filters << Quickeebooks::Online::Service::Filter.new(:text, :field => 'FamilyName', :value => 'Smith')

d1 = Time.mktime(2011, 5, 1)
d2 = Time.mktime(2011, 8, 1)
filters << Quickeebooks::Online::Service::Filter.new(:datetime, :field => 'CreateTime', :after => d1, :before => d2)

sorter = Quickeebooks::Online::Service::Sort.new('FamilyName', 'AtoZ')

customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customers = customer_service.list(filters, 1, 30, sort)

# returns
 
customers.count
=> 67

customers.current_page
=> 1

customers.entries 
=> [ #<Quickeebooks::Online::Model::Customer:0x007f8e29259770>, #<Quickeebooks::Online::Model::Customer:0x0078768202020>, ... ]
```

## Reading a single object

Use the `Service` instance to fetch an object by its id using the `fetch_by_id` method:

```ruby
# fetch the Customer object with an id of 100
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customer = customer_service.fetch_by_id(100)
customer.name
=> John Doe
```

## Writing Objects

Create or fetch an instance of a `Model` object and pass it to the corresponding service `create` or `update` method.

You will need make sure you supply all required fields for that Intuit object, so consult the documentation. For instance the documentation for a `Customer` object is at: [Intuit Customer Object](https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services/0400_QuickBooks_Online/Customer)

## Creating a single object

Pass an instance of your object to the `create` method on its related Service:

```ruby
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customer = Quickeebooks::Online::Model::Customer.new
customer.name = "Richard Parker"
customer.email = "richard@example.org"
customer_service.create(customer)
```



## Updating a single object

Pass an instance of your object to the `update` method on its related Service:

```ruby
customer_service = Quickeebooks::Online::Service::Customer.new(oauth_client, realm_id)
customer = customer_service.fetch_by_id(100)
customer.name = "Richard Parker"
customer.email = "richard@example.org"
customer_service.update(customer)
```

# Services

All `Service` objects (`Quickeebooks::Online::Service::Customer`, `Quickeebooks::Online::Service::Account`, `Quickeebooks::Online::Service::Invoice`, etc) have a simple API for CRUD operations. Some service objects have additional functionality (for example the Invoice object can fetch a PDF representation of an invoice). See notes below for each service.

```ruby
create(object)
update(object)
list()
fetch_by_id(object_id)
delete(object)
```

Current Services:

* Account
* Customer
* Invoice
* Item


## Invoice Service

The `Quickeebooks::Online::Service::Invoice` has the ability to retrieve an invoice as a PDF document:

```ruby
invoice_as_pdf(invoice_id, destination_file_name)
```

Usage: Download invoice #89 and store it at `/tmp/invoice.pdf`:

```ruby
invoice_as_pdf(89, "/tmp/invoice.pdf")
```

_Note:_ it is up to you the caller to remove or clean up the file when you are done.

## Author

Cody Caughlan

## License

The MIT License

Copyright (c) 2012

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
