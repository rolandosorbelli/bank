# Prints the bank statement
class BankStatement
  attr_accessor :client_account

  def initialize(account = BankAccount.new)
    @client_account = account.transactions
  end

  def print_statement
    statement_headline
    statement_body
  end

  def statement_body
    @client_account.each do |t|
      if t.type == 'deposit'
        puts "#{t.date} || #{t.amount}.00 || || #{t.balance}.00"
      else
        puts "#{t.date} || || #{t.amount}.00 || #{t.balance}.00"
      end
    end
  end

  private

  def statement_headline
    puts 'Date || Credit || Debit || Balance'
  end
end
