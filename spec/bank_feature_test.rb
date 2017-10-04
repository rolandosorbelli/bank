require '../lib/bank_account'
require '../lib/bank_statement'
require '../lib/bank_transaction'

bank = BankAccount.new
statement = BankStatement.new

p bank.deposit('02-10-2017', 1000)
# p bank.transactions