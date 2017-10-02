require_relative "bank"

bank = Bank.new
p bank.balance
bank.deposit('02-10-2017', 1000)
bank.deposit('03-10-2017', 2000)
p bank.balance
bank.withdrawal('04-10-2017', 500)
p bank.balance
p bank.print_statement