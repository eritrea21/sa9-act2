# Class code
class User     
    attr_reader :username, :logged_in

    def initialize(username)
        @username = username
        @logged_in = false
    end
    def log_in
        @logged_in = true
    
    end
    def log_out
        @logged_in = false
    end
end

# RSpec Skeleton
# frozen_string_literal: true

RSpec.describe USER do
  describe "#log_in" do
    it "logs the user in " do
      user = User.new("test_user_1")
      user.log_in
      expect( user.logged_in).to eq(true)
    end
  end
  describe "#log_out" do 
    it  "logs the user out" do
        user = User.new("test_user_1")
        user.log_in
        user.log_out
        expect (user.logged_in).to(false)
    end
  end
  describe "#username" do
   it "returns the correct username " do
    username = "test_user_1"
    user = User.new(username)
    expect(user.username).to eq(username)
   end
  end
  
end

