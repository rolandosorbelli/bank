require 'bank_statement'
require 'bank_account'

describe BankStatement do
  let(:bank) { double(:bank) }
  transaction = [{ date: '02-10-2017', deposit: 1000, balance: 1000 }]

  context 'When testing the statement_headline method' do
    it 'should test that there is a headline in the statement' do
      expect { subject.print_statement }.to output(
        "Date || Credit || Debit || Balance\n"
      ).to_stdout
    end
  end

  context 'When testing the statement output' do
    it 'should test that a statement will be printed' do
      allow(bank).to receive(:transactions).and_return(transaction)
      subject = BankStatement.new(bank)
      expect { subject.print_statement }.to output(
        "Date || Credit || Debit || Balance\n" \
        "02-10-2017 || 1000 ||  || 1000\n"
      ).to_stdout
    end
  end
end
