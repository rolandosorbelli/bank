require 'bank_statement'
require 'bank_account'

describe BankAccount do
  deposit = [{ date: '02-10-2017', deposit: 1000, balance: 1000 }]
  withdrawal = [{ date: '04-10-2017', withdraw: 500, balance: -500 }]

  context 'When testing the bank_account array' do
    it 'should test that the bank account is empty' do
      expect(subject.transactions).to eq([])
    end
  end

  context 'When testing the deposit method' do
    it 'should test that the client is able to make a deposit' do
      subject.deposit('02-10-2017', 1000)
      expect(subject.transactions).to eq(deposit)
    end
  end

  context 'When testing the withdrawal method' do
    it 'should test that the client is able to withdraw money' do
      subject.withdrawal('04-10-2017', 500)
      expect(subject.transactions).to eq(withdrawal)
    end
  end

  context 'When testing the balance of the bank account' do
    it 'should print the correct balance' do
      subject.deposit('02-10-2017', 1000)
      expect(subject.balance).to eq(1000)
    end
  end
end
