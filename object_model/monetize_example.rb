require 'monetize'
I18n.enforce_available_locales = false

# "100".to_money == Money.new(100_00, "USD")

bargain_price = Monetize.from_numeric(99, 'USD')
p bargain_price.format #=> "$99.00"

# Adding a new method to Numeric class
# Ex) Numeric#to_money
# => https://github.com/RubyMoney/monetize/blob/master/lib/monetize/core_extensions/string.rb#L4
standard_price = 100.to_money('USD')
p standard_price.format #=> "$100.00"
