# Manages the bank account
class BankAccount
  attr_accessor :transactions, :balance

  def initialize(balance = 0)
    @transactions = []
    @balance = balance
  end

  def deposit(date, deposit)
    @balance += deposit
    @transactions << { date: date, deposit: deposit, balance: @balance }
  end

  def withdrawal(date, withdraw)
    @balance -= withdraw
    @transactions << { date: date, withdraw: withdraw, balance: @balance }
  end
end
