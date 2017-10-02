require "bank"

describe Bank do
	context "When testing the deposit method" do
		it "should test that the client is able to make a deposit" do
			subject.deposit("02-10-2017", 1000)
			expect(subject.bank_account).to eq([{date: "02-10-2017", deposit: 1000}])
		end
	end

	context "When testing the withdrawal method" do
		it "should test that the client is able to withdraw money" do
			subject.withdrawal("04-10-2017", 500)
			expect(subject.bank_account).to eq([{date: "04-10-2017", withdrawal: 500}])
		end
	end
end