class BankStatement
  attr_accessor :client_account

  def initialize(account = BankAccount.new)
    @client_account = account.bank_account
  end

  def print_statement
    statement_headline
    @client_account.reverse_each do |n|
      puts "#{n[:date]} || #{n[:deposit]} || #{n[:withdrawal]} || #{n[:balance]}"
    end
  end # <-- Prints the statament in a reverse order including "date", potential "deposits" and/or "withdrawals" and "balance"

  def statement_headline
    puts 'Date || Credit || Debit || Balance'
  end # <-- Prints the headline of the statement
end