require "bank"

describe Bank do
	context "When testing the deposit method" do
		it "should test that the client is able to make a deposit" do
			subject.deposit("02-10-2017", 1000)
			expect(subject.bank_account).to eq([{date: "02-10-2017", deposit: 1000}])
		end
	end

	# context "When testing the withdrawal method" do
	# 	it "should test that the client is able to withdraw money" do
	# 		subject.withdrawal("03-10-2017", 5000)
	# 		expect(subject.bank_account).to eq([{date: "02-10-2017", amount: 1000}])
	# 	end
	# end
end