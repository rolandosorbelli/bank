require '../lib/bank_account'
require '../lib/bank_statement'
require '../lib/bank_transaction'

bank = BankAccount.new
statement = BankStatement.new

bank.deposit('02-10-2017', 1000)
bank.deposit('03-10-2017', 500)
p bank.transactions



# p bank.balance
# bank.deposit('02-10-2017', 1000)
# bank.deposit('03-10-2017', 2000)
# p bank.balance
# bank.withdrawal('04-10-2017', 500)
# p statement.print_statement
