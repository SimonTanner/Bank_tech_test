require "./lib/bank_account"

describe BankAccount do

  describe "username" do
    it "returns the name of the account holder which was created upon account initialisation" do
      new_account = BankAccount.new("John Smith")
      expect(new_account.username).to eq("John Smith")
    end
  end

  describe "balance" do
    it "returns the account balance of zero if an account has just been instantiated" do
      new_account = BankAccount.new("John Smith")
      expect(new_account.balance).to eq("£0.00")
    end
  end

end
