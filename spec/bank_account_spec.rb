require "bank"

describe Bank do
	context "When testing the deposit method" do
		it "should test that the client is able to make a deposit" do
			subject.deposit("02-10-2017", 1000)
			expect(subject.bank_account).to eq([{date: "02-10-2017", deposit: 1000, balance: 1000}])
		end
	end

	context "When testing the withdrawal method" do
		it "should test that the client is able to withdraw money" do
			subject.withdrawal("04-10-2017", 500)
			expect(subject.bank_account).to eq([{date: "04-10-2017", withdrawal: 500, balance: -500}])
		end
	end

	context "When testing the balance of the bank account" do
		it "should print the correct balance" do
			subject.deposit("02-10-2017", 1000)
			subject.withdrawal("04-10-2017", 500)
			expect(subject.balance).to eq(500)
		end
	end

	context "When testing the print_statement method" do
		it "should test that the client can access the statement" do
			subject.deposit("02-10-2017", 1000)
			subject.withdrawal("04-10-2017", 500)
			expect{subject.print_statement}.to output(
				"Date || Credit || Debit || Balance\n" +
				"04-10-2017 ||  || 500 || 500\n" +
				"02-10-2017 || 1000 ||  || 1000\n"
				).to_stdout
		end
	end
end