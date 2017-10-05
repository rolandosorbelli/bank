require 'bank_statement'
require 'bank_account'
require 'bank_transaction'

describe BankAccount do
  context 'When testing the bank_account array' do
    it 'should test that the bank account is empty' do
      expect(subject.transactions).to eq([])
    end
  end

  context 'When testing the balance of the bank account' do
    it 'should test the deposit method' do
      subject.deposit('02-10-2017', 1000)
      expect(subject.balance).to eq(1000)
    end

    it 'should test the withdrawal method' do
      subject.withdrawal('04-10-2017', 500)
      expect(subject.balance).to eq(-500)
    end

    it 'should print the correct balance after a few transactions' do
      subject.deposit('02-10-2017', 1000)
      subject.withdrawal('04-10-2017', 500)
      expect(subject.balance).to eq(500)
    end

    it 'should print the balance when the statement is empty' do
      expect(subject.balance).to eq(0)
    end
  end
end
