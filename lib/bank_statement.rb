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

  def statement_headline
    puts 'Date || Credit || Debit || Balance'
  end

  def statement_body
    @client_account.reverse_each do |n|
      puts "#{n[:date]} || #{n[:deposit]} || #{n[:withdraw]} || #{n[:balance]}"
    end
  end
end
