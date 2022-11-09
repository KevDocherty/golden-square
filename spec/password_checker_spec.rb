# File: spec/password_checker_spec.rb

require 'password_checker'

RSpec.describe PasswordChecker do
  it "checks that password is sufficiently long" do
    password = "8letters"
    passcheck = PasswordChecker.new()
    expect(passcheck.check(password)).to eq true
  end
  
  context "password too short" do
    it "fails" do
      password = "short"
      passcheck = PasswordChecker.new()
      expect { passcheck.check(password) }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
  
end