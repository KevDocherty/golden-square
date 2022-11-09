# File: spec/check_codeword_spec.rb

require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "returns 'Close, but nope.'" do
    result = check_codeword("hope")
    expect(result).to eq "Close, but nope."
  end
  it "returns 'WRONG!'" do
    result = check_codeword("random")
    expect(result).to eq "WRONG!"
  end  
end