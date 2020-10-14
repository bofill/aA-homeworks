require 'rails_helper'

RSpec.describe User, type: :model do
    subject(:user) { User.new(email: "test@gmail.com", password: "password")}

    describe "validations" do
    # validations
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

    describe "#is_password?" do
      context "when password matches" do
        it "returns true" do
          expect(:user.is_password("password")).to_be_truthy
        end
      end
      context "when password does not match" do
        expect(:user.is_password("badpassword")).to_be_falsy
      end
  end

  
end
