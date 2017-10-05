require '../lib/bank_account'
require '../lib/bank_statement'
require '../lib/bank_transaction'

bank = BankAccount.new
statement = BankStatement.new(bank)

bank.deposit('02-10-2017', 1000)
bank.deposit('03-10-2017', 500)
bank.withdrawal('04-10-2017', 200)
p bank.balance
p bank.transactions
p statement.client_account
p statement.print_statement
