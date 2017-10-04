# Manages the bank account
class BankAccount
  attr_accessor :transactions, :balance

  def initialize(balance = 0)
    @transactions = []
    @balance = balance
  end

  def deposit(date, amount)
    @balance += amount
    @transactions << BankTransaction.new(date, "deposit", amount, @balance)
  end

  def withdrawal(date, amount)
    @balance -= amount
    @transactions << BankTransaction.new(date, "withdrawal", amount, @balance)
  end
end
