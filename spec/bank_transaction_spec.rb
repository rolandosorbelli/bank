require 'bank_statement'
require 'bank_account'
require 'bank_transaction'

describe BankTransaction do

	subject { BankTransaction.new('05/10/2017', 'debit', 100, 100) }

	context 'When testing the Bank Transactions' do
		it 'should test that the date is initialized properly' do
			expect(subject.date).to eq('05/10/2017')
		end

		it 'should test that the type of transaction is initialized properly' do
			expect(subject.type).to eq('debit')
		end

		it 'should test that the amount is initialized properly' do
			expect(subject.amount).to eq(100)
		end

		it 'should test that the balance is initialized properly' do
			expect(subject.balance).to eq(100)
		end
	end
end