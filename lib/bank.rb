class Bank

	attr_accessor :bank_account, :balance

	def initialize(balance = 0)
		@bank_account = [] # <-- Client bank account
		@balance = balance # <-- Balance of the bank account
	end

	def deposit(date, deposit)
		@bank_account << {date: date, deposit: deposit, balance: @balance += deposit}
		# <-- A date and an amount for the deposit go into the client's bank account, increasing its balance
	end

	def withdrawal(date, withdrawal)
		@bank_account << {date: date, withdrawal: withdrawal, balance: @balance -= withdrawal}
		# <-- A date and an amount for the withdrawal go into the client's bank account, decreasing its balance
	end

	def print_statement
		puts "Date || Credit || Debit || Balance"
		@bank_account.reverse_each do |n|
  			puts "#{n[:date]} || #{n[:deposit]} || #{n[:withdrawal]} || #{n[:balance]}"
		end
		# <-- Prints the statament in a reverse order including "date", potential "deposits" and/or "withdrawals" and "balance"
	end

end








bank = Bank.new
p bank.balance
bank.deposit("02-10-2017", 1000)
# bank.deposit("03-10-2017", 2000)
# p bank.bank_account
p bank.balance
bank.withdrawal("04-10-2017", 500)
p bank.balance
# p bank.bank_account
# p bank.balance
p bank.print_statement