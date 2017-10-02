class Bank

	attr_accessor :bank_account, :balance

	def initialize(balance = 0)
		@bank_account = [] # <-- Client bank account
		@balance = balance
	end

	def deposit(date, deposit)
		@bank_account << {date: date, deposit: deposit} # <-- A date and an amount for the deposit go into the client's bank account
		@balance += deposit # <-- The current balance after a deposit
	end

	def withdrawal(date, withdrawal)
		@bank_account << {date: date, withdrawal: withdrawal}# <-- A date and an amount for the withdrawal go into the client's bank account
		@balance -= withdrawal # <-- The current balance after a withdrawal
	end

end








bank = Bank.new
bank.deposit("02-10-2017", 1000)
bank.deposit("03-10-2017", 2000)
p bank.bank_account
p bank.balance
bank.withdrawal("04-10-2017", 500)
p bank.bank_account
p bank.balance