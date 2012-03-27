module Quickeebooks
  module Windows
    module Model
      module AccountDetailType
        TYPES = ["ARRefundCreditCard", "Accepted", "AccountsPayable", "AccountsReceivable", "AccumulatedAdjustment", "AccumulatedAmortization", "AccumulatedAmortizationOfOtherAssets", "AccumulatedDepletion", "AccumulatedDepreciation", "Active", "AdvertisingPromotional", "AllowanceForBadDebts", "AmEx", "AmEx", "Amortization", "Annually", "Area", "Assembly", "Asset", "Authorization", "Auto", "Awarded", "BadDebts", "Bank", "BankCharges", "Bill", "BillPayment", "Billable", "Billable", "BillableHasBeenBilled", "BuildAssembly", "Buildings", "Capture", "CardNotPresent", "CardPresent", "CarryOver", "Cash", "CashOnHand", "CashPurchase", "Charge", "Charge", "CharitableContributions", "Check", "Check", "Checking", "Closed", "Closed", "CommonStock", "Cost of Goods Sold", "CostOfLabor", "CostOfLaborCos", "Count", "Credit", "Credit Card", "CreditCard", "CreditCardCharge", "CreditCardCredit", "CreditMemo", "Customer", "DateDriven", "Debit", "DebitCard", "DebitCard", "DepletableAssets", "Deposit", "Depreciation", "DevelopmentCosts", "DirectDepositPayable", "DiscountsRefundsGiven", "Discover", "Discover", "DividendIncome", "Draft", "DuesSubscriptions", "ECheck", "EFPLiabilityCheck", "EFTBillPayment", "EFTRefund", "Employee", "Employee", "Employee", "EmployeeCashAdvances", "Entertainment", "EntertainmentMeals", "EquipmentRental", "EquipmentRentalCos", "Equity", "Equity", "Estimate", "Expense", "Expense", "Fail", "FederalIncomeTaxPayable", "Fixed Asset", "Fixed Asset", "FurnitureAndFixtures", "GiftCard", "GiftCard", "Goodwill", "Group", "HasBeenBilled", "InProgress", "Income", "Insurance", "InsurancePayable", "IntangibleAssets", "InterestEarned", "InterestPaid", "Inventory", "Inventory", "InventoryAdjustment", "Investment_MortgageRealEstateLoans", "Investment_Other", "Investment_TaxExemptSecurities", "Investment_USGovernmentObligations", "Invoice", "ItemReceipt", "JournalEntry", "Land", "LeaseBuyout", "LeaseholdImprovements", "LegalProfessionalFees", "Length", "Liability", "LiabilityAdjustment", "Licenses", "LineOfCredit", "LoanPayable", "LoansToOfficers", "LoansToOthers", "LoansToStockholders", "Long Term Liability", "MachineryAndEquipment", "MasterCard", "MasterCard", "MoneyMarket", "Monthly", "Non-Posting", "NonProfitIncome", "None", "NotActive", "NotAvailable", "NotAwarded", "NotBillable", "NotBillable", "NotesPayable", "OfficeGeneralAdministrativeExpenses", "OpeningBalanceEquity", "OrganizationalCosts", "Other", "Other", "Other", "Other Asset", "Other Charge", "Other Current Asset", "Other Current Liability", "Other Expense", "Other Income", "OtherCostsOfServiceCos", "OtherCreditCard", "OtherCreditCard", "OtherCurrentAssets", "OtherCurrentLiabilities", "OtherFixedAssets", "OtherInvestmentIncome", "OtherLongTermAssets", "OtherLongTermLiabilities", "OtherMiscellaneousExpense", "OtherMiscellaneousIncome", "OtherMiscellaneousServiceCost", "OtherPrimaryIncome", "Overdue", "OwnersEquity", "Paid", "PaidInCapitalOrSurplus", "PartnerContributions", "PartnerDistributions", "PartnersEquity", "Pass", "Payable", "Paycheck", "Payment", "PayrollClearing", "PayrollExpenses", "PayrollLiabilityCheck", "PayrollTaxPayable", "PenaltiesSettlements", "Pending", "Pending", "Pending", "PreferredStock", "PrepaidExpenses", "PrepaidExpensesPayable", "PriorPayment", "Product", "PromotionalMeals", "PurchaseOrder", "Quarterly", "ReceivePayment", "Refund", "RefundCheck", "Rejected", "RentOrLeaseOfBuildings", "RentsHeldInTrust", "RentsInTrustLiability", "RepairMaintenance", "Retainage", "RetainedEarnings", "Revenue", "SalesOfProductIncome", "SalesOrder", "SalesReceipt", "SalesTaxPayable", "SalesTaxPaymentCheck", "Savings", "SecurityDeposits", "Service", "ServiceFeeIncome", "ShareholderNotesPayable", "ShippingFreightDelivery", "ShippingFreightDeliveryCos", "Standard", "StateLocalIncomeTaxPayable", "Subtotal", "SuppliesMaterials", "SuppliesMaterialsCogs", "TaxExemptInterest", "TaxesPaid", "Time", "TimeActivity", "Transfer", "Trash", "Travel", "TravelMeals", "TreasuryStock", "TrustAccounts", "TrustAccountsLiabilities", "UnPaid", "UndepositedFunds", "Utilities", "Vehicles", "Vendor", "Vendor", "Vendor", "VendorCredit", "Visa", "Visa", "VoiceAuthorization", "Volume", "Weight", "YTDAdjustment"]

        AR_REFUND_CREDIT_CARD = 'ARRefundCreditCard'
        ACCEPTED = 'Accepted'
        ACCOUNTS_PAYABLE = 'AccountsPayable'
        ACCOUNTS_RECEIVABLE = 'AccountsReceivable'
        ACCUMULATED_ADJUSTMENT = 'AccumulatedAdjustment'
        ACCUMULATED_AMORTIZATION = 'AccumulatedAmortization'
        ACCUMULATED_AMORTIZATION_OF_OTHER_ASSETS = 'AccumulatedAmortizationOfOtherAssets'
        ACCUMULATED_DEPLETION = 'AccumulatedDepletion'
        ACCUMULATED_DEPRECIATION = 'AccumulatedDepreciation'
        ACTIVE = 'Active'
        ADVERTISING_PROMOTIONAL = 'AdvertisingPromotional'
        ALLOWANCE_FOR_BAD_DEBTS = 'AllowanceForBadDebts'
        AM_EX = 'AmEx'
        AMORTIZATION = 'Amortization'
        ANNUALLY = 'Annually'
        AREA = 'Area'
        ASSEMBLY = 'Assembly'
        ASSET = 'Asset'
        AUTHORIZATION = 'Authorization'
        AUTO = 'Auto'
        AWARDED = 'Awarded'
        BAD_DEBTS = 'BadDebts'
        BANK = 'Bank'
        BANK_CHARGES = 'BankCharges'
        BILL = 'Bill'
        BILL_PAYMENT = 'BillPayment'
        BILLABLE = 'Billable'
        BILLABLE_HAS_BEEN_BILLED = 'BillableHasBeenBilled'
        BUILD_ASSEMBLY = 'BuildAssembly'
        BUILDINGS = 'Buildings'
        CAPTURE = 'Capture'
        CARD_NOT_PRESENT = 'CardNotPresent'
        CARD_PRESENT = 'CardPresent'
        CARRY_OVER = 'CarryOver'
        CASH = 'Cash'
        CASH_ON_HAND = 'CashOnHand'
        CASH_PURCHASE = 'CashPurchase'
        CHARGE = 'Charge'
        CHARITABLE_CONTRIBUTIONS = 'CharitableContributions'
        CHECK = 'Check'
        CHECKING = 'Checking'
        CLOSED = 'Closed'
        COMMON_STOCK = 'CommonStock'
        COST_OF_GOODS_SOLD = 'CostOfGoodsSold'
        COST_OF_LABOR = 'CostOfLabor'
        COST_OF_LABOR_COS = 'CostOfLaborCos'
        COUNT = 'Count'
        CREDIT = 'Credit'
        CREDIT_CARD = 'CreditCard'
        CREDIT_CARD_CHARGE = 'CreditCardCharge'
        CREDIT_CARD_CREDIT = 'CreditCardCredit'
        CREDIT_MEMO = 'CreditMemo'
        CUSTOMER = 'Customer'
        DATE_DRIVEN = 'DateDriven'
        DEBIT = 'Debit'
        DEBIT_CARD = 'DebitCard'
        DEPLETABLE_ASSETS = 'DepletableAssets'
        DEPOSIT = 'Deposit'
        DEPRECIATION = 'Depreciation'
        DEVELOPMENT_COSTS = 'DevelopmentCosts'
        DIRECT_DEPOSIT_PAYABLE = 'DirectDepositPayable'
        DISCOUNTS_REFUNDS_GIVEN = 'DiscountsRefundsGiven'
        DISCOVER = 'Discover'
        DIVIDEND_INCOME = 'DividendIncome'
        DRAFT = 'Draft'
        DUES_SUBSCRIPTIONS = 'DuesSubscriptions'
        E_CHECK = 'ECheck'
        EFP_LIABILITY_CHECK = 'EFPLiabilityCheck'
        EFT_BILL_PAYMENT = 'EFTBillPayment'
        EFT_REFUND = 'EFTRefund'
        EMPLOYEE = 'Employee'
        EMPLOYEE_CASH_ADVANCES = 'EmployeeCashAdvances'
        ENTERTAINMENT = 'Entertainment'
        ENTERTAINMENT_MEALS = 'EntertainmentMeals'
        EQUIPMENT_RENTAL = 'EquipmentRental'
        EQUIPMENT_RENTAL_COS = 'EquipmentRentalCos'
        EQUITY = 'Equity'
        ESTIMATE = 'Estimate'
        EXPENSE = 'Expense'
        FAIL = 'Fail'
        FEDERAL_INCOME_TAX_PAYABLE = 'FederalIncomeTaxPayable'
        FIXED_ASSET = 'FixedAsset'
        FURNITURE_AND_FIXTURES = 'FurnitureAndFixtures'
        GIFT_CARD = 'GiftCard'
        GOODWILL = 'Goodwill'
        GROUP = 'Group'
        HAS_BEEN_BILLED = 'HasBeenBilled'
        IN_PROGRESS = 'InProgress'
        INCOME = 'Income'
        INSURANCE = 'Insurance'
        INSURANCE_PAYABLE = 'InsurancePayable'
        INTANGIBLE_ASSETS = 'IntangibleAssets'
        INTEREST_EARNED = 'InterestEarned'
        INTEREST_PAID = 'InterestPaid'
        INVENTORY = 'Inventory'
        INVENTORY_ADJUSTMENT = 'InventoryAdjustment'
        INVESTMENT_MORTGAGE_REAL_ESTATE_LOANS = 'Investment_MortgageRealEstateLoans'
        INVESTMENT_OTHER = 'Investment_Other'
        INVESTMENT_TAX_EXEMPT_SECURITIES = 'Investment_TaxExemptSecurities'
        INVESTMENT_US_GOVERNMENT_OBLIGATIONS = 'Investment_USGovernmentObligations'
        INVOICE = 'Invoice'
        ITEM_RECEIPT = 'ItemReceipt'
        JOURNAL_ENTRY = 'JournalEntry'
        LAND = 'Land'
        LEASE_BUYOUT = 'LeaseBuyout'
        LEASEHOLD_IMPROVEMENTS = 'LeaseholdImprovements'
        LEGAL_PROFESSIONAL_FEES = 'LegalProfessionalFees'
        LENGTH = 'Length'
        LIABILITY = 'Liability'
        LIABILITY_ADJUSTMENT = 'LiabilityAdjustment'
        LICENSES = 'Licenses'
        LINE_OF_CREDIT = 'LineOfCredit'
        LOAN_PAYABLE = 'LoanPayable'
        LOANS_TO_OFFICERS = 'LoansToOfficers'
        LOANS_TO_OTHERS = 'LoansToOthers'
        LOANS_TO_STOCKHOLDERS = 'LoansToStockholders'
        LONG_TERM_LIABILITY = 'LongTermLiability'
        MACHINERY_AND_EQUIPMENT = 'MachineryAndEquipment'
        MASTER_CARD = 'MasterCard'
        MONEY_MARKET = 'MoneyMarket'
        MONTHLY = 'Monthly'
        NON_POSTING = 'Non-Posting'
        NON_PROFIT_INCOME = 'NonProfitIncome'
        NONE = 'None'
        NOT_ACTIVE = 'NotActive'
        NOT_AVAILABLE = 'NotAvailable'
        NOT_AWARDED = 'NotAwarded'
        NOT_BILLABLE = 'NotBillable'
        NOTES_PAYABLE = 'NotesPayable'
        OFFICE_GENERAL_ADMINISTRATIVE_EXPENSES = 'OfficeGeneralAdministrativeExpenses'
        OPENING_BALANCE_EQUITY = 'OpeningBalanceEquity'
        ORGANIZATIONAL_COSTS = 'OrganizationalCosts'
        OTHER_EXPENSE = 'OtherExpense'
        OTHER_INCOME = 'OtherIncome'
        OTHER_COSTS_OF_SERVICE_COS = 'OtherCostsOfServiceCos'
        OTHER_CREDIT_CARD = 'OtherCreditCard'
        OTHER_CURRENT_ASSETS = 'OtherCurrentAssets'
        OTHER_CURRENT_LIABILITIES = 'OtherCurrentLiabilities'
        OTHER_FIXED_ASSETS = 'OtherFixedAssets'
        OTHER_INVESTMENT_INCOME = 'OtherInvestmentIncome'
        OTHER_LONG_TERM_ASSETS = 'OtherLongTermAssets'
        OTHER_LONG_TERM_LIABILITIES = 'OtherLongTermLiabilities'
        OTHER_MISCELLANEOUS_EXPENSE = 'OtherMiscellaneousExpense'
        OTHER_MISCELLANEOUS_INCOME = 'OtherMiscellaneousIncome'
        OTHER_MISCELLANEOUS_SERVICE_COST = 'OtherMiscellaneousServiceCost'
        OTHER_PRIMARY_INCOME = 'OtherPrimaryIncome'
        OVERDUE = 'Overdue'
        OWNERS_EQUITY = 'OwnersEquity'
        PAID = 'Paid'
        PAID_IN_CAPITAL_OR_SURPLUS = 'PaidInCapitalOrSurplus'
        PARTNER_CONTRIBUTIONS = 'PartnerContributions'
        PARTNER_DISTRIBUTIONS = 'PartnerDistributions'
        PARTNERS_EQUITY = 'PartnersEquity'
        PASS = 'Pass'
        PAYABLE = 'Payable'
        PAYCHECK = 'Paycheck'
        PAYMENT = 'Payment'
        PAYROLL_CLEARING = 'PayrollClearing'
        PAYROLL_EXPENSES = 'PayrollExpenses'
        PAYROLL_LIABILITY_CHECK = 'PayrollLiabilityCheck'
        PAYROLL_TAX_PAYABLE = 'PayrollTaxPayable'
        PENALTIES_SETTLEMENTS = 'PenaltiesSettlements'
        PENDING = 'Pending'
        PREFERRED_STOCK = 'PreferredStock'
        PREPAID_EXPENSES = 'PrepaidExpenses'
        PREPAID_EXPENSES_PAYABLE = 'PrepaidExpensesPayable'
        PRIOR_PAYMENT = 'PriorPayment'
        PRODUCT = 'Product'
        PROMOTIONAL_MEALS = 'PromotionalMeals'
        PURCHASE_ORDER = 'PurchaseOrder'
        QUARTERLY = 'Quarterly'
        RECEIVE_PAYMENT = 'ReceivePayment'
        REFUND = 'Refund'
        REFUND_CHECK = 'RefundCheck'
        REJECTED = 'Rejected'
        RENT_OR_LEASE_OF_BUILDINGS = 'RentOrLeaseOfBuildings'
        RENTS_HELD_IN_TRUST = 'RentsHeldInTrust'
        RENTS_IN_TRUST_LIABILITY = 'RentsInTrustLiability'
        REPAIR_MAINTENANCE = 'RepairMaintenance'
        RETAINAGE = 'Retainage'
        RETAINED_EARNINGS = 'RetainedEarnings'
        REVENUE = 'Revenue'
        SALES_OF_PRODUCT_INCOME = 'SalesOfProductIncome'
        SALES_ORDER = 'SalesOrder'
        SALES_RECEIPT = 'SalesReceipt'
        SALES_TAX_PAYABLE = 'SalesTaxPayable'
        SALES_TAX_PAYMENT_CHECK = 'SalesTaxPaymentCheck'
        SAVINGS = 'Savings'
        SECURITY_DEPOSITS = 'SecurityDeposits'
        SERVICE = 'Service'
        SERVICE_FEE_INCOME = 'ServiceFeeIncome'
        SHAREHOLDER_NOTES_PAYABLE = 'ShareholderNotesPayable'
        SHIPPING_FREIGHT_DELIVERY = 'ShippingFreightDelivery'
        SHIPPING_FREIGHT_DELIVERY_COS = 'ShippingFreightDeliveryCos'
        STANDARD = 'Standard'
        STATE_LOCAL_INCOME_TAX_PAYABLE = 'StateLocalIncomeTaxPayable'
        SUBTOTAL = 'Subtotal'
        SUPPLIES_MATERIALS = 'SuppliesMaterials'
        SUPPLIES_MATERIALS_COGS = 'SuppliesMaterialsCogs'
        TAX_EXEMPT_INTEREST = 'TaxExemptInterest'
        TAXES_PAID = 'TaxesPaid'
        TIME = 'Time'
        TIME_ACTIVITY = 'TimeActivity'
        TRANSFER = 'Transfer'
        TRASH = 'Trash'
        TRAVEL = 'Travel'
        TRAVEL_MEALS = 'TravelMeals'
        TREASURY_STOCK = 'TreasuryStock'
        TRUST_ACCOUNTS = 'TrustAccounts'
        TRUST_ACCOUNTS_LIABILITIES = 'TrustAccountsLiabilities'
        UN_PAID = 'UnPaid'
        UNDEPOSITED_FUNDS = 'UndepositedFunds'
        UTILITIES = 'Utilities'
        VEHICLES = 'Vehicles'
        VENDOR = 'Vendor'
        VENDOR_CREDIT = 'VendorCredit'
        VISA = 'Visa'
        VOICE_AUTHORIZATION = 'VoiceAuthorization'
        VOLUME = 'Volume'
        WEIGHT = 'Weight'
        YTD_ADJUSTMENT = 'YTDAdjustment'


      end
    end
  end
end
