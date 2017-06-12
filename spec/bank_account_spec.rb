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

    describe "deposit" do
      it "will take 1 argument" do
        new_account = BankAccount.new("John Smith")
        expect(new_account).to respond_to(:deposit).with(1).argument
      end

      it "will a float as an arguement and add this to the balance" do
        new_account = BankAccount.new("John Smith")
        new_account.deposit(500.00)
        expect(new_account.balance).to eq("£500.00")
      end
    end

    describe "debit" do
      it "it takes a number as an argument" do
        new_account = BankAccount.new("John Smith")
        expect(new_account).to respond_to(:debit).with(1).argument
      end

      it "takes an amount and subtracts it from the account balance" do
        new_account = BankAccount.new("John Smith")
        new_account.deposit(1000)
        new_account.debit(750)
        expect(new_account.balance).to eq("£250.00")
      end
    end
end
