# Class Bank Account
class BankAccount
    attr_reader :balance
    def initialize(balance = 0)
        @balance = balance
    end
    def deposit(amount)
        @balance += amount

    end
    def deposite(amount)
        @balance += amount

    end
    def withdraw(amount)
        @balance -= amount if amount <= @balance
    end
end
# RSpec Tests
RSpec.describe BankAccount do
    describe "#deposit" do
    it "increases the balance by the deposit amount" do
    # Fill in the test
    account = BankAccount.new(150)
    account.deposit(500)
    expect(account.balance).to eq(650)

    end
    
end
    describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are
    available" do
   
    account = BankAccount.new(100)
    account.withdrawal(20)
    expect(account.balance).to eq(80)
    end
    it "does not change the balance if insufficient funds" do
    
      account = BankAccount.new(300)
      account.withdraw(350)
      expect(account.balance).to eq(300)
    end
end
    describe "#balance" do
    it "returns the current balance" do
    
      account = BankAccount.new(100)
      expect(account.balance).to eq(100)
      end
    end
end
    
    