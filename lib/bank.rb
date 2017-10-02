class Bank

	attr_accessor :bank_account

	def initialize
		@bank_account = [] # <-- Client bank account
	end

	def deposit(date, deposit)
		@bank_account << {date: date, deposit: deposit} # <-- A date and an amount for the deposit go into the client's bank account
	end

end








bank = Bank.new
bank.deposit("02-10-2017", 1000)
bank.deposit("03-10-2017", 2000)
p bank.bank_account
p bank.bank_account.inject(0){|sum, hash| sum + hash[:deposit]}