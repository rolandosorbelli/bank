require 'bank_statement'
require 'bank_account'

describe BankStatement do
  context 'When testing the statement output' do
    it 'should test that there is a headline in the statement' do
      expect { subject.print_statement }.to output(
        "Date || Credit || Debit || Balance\n"
      ).to_stdout
    end

    it 'should print a deposit transaction' do
      account = BankAccount.new
      statement = BankStatement.new(account)
      account.deposit('01-10-2017', 500)
      expect { statement.print_statement }.to output(
        "Date || Credit || Debit || Balance\n" \
        "01-10-2017 || 500.00 || || 500.00\n"
      ).to_stdout
    end

    it 'should print a withdrawal transaction' do
      account = BankAccount.new
      statement = BankStatement.new(account)
      account.withdrawal('01-10-2017', 500)
      expect { statement.print_statement }.to output(
        "Date || Credit || Debit || Balance\n" \
        "01-10-2017 || || 500.00 || -500.00\n"
      ).to_stdout
    end
  end
end
