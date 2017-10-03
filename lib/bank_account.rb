class BankAccount
  attr_accessor :bank_account, :balance

  def initialize(balance = 0)
    @bank_account = [] # <-- Client bank account
    @balance = balance # <-- Balance of the bank account
  end

  def deposit(date, deposit)
    @bank_account << { date: date, deposit: deposit, balance: @balance += deposit }
  end # <-- A date and an amount for the deposit go into the client's bank account, increasing its balance

  def withdrawal(date, withdrawal)
    @bank_account << { date: date, withdrawal: withdrawal, balance: @balance -= withdrawal }
  end # <-- A date and an amount for the withdrawal go into the client's bank account, decreasing its balance
end