# File: spec/present_spec.rb

require 'present'

RSpec.describe Present do
  context "when no present is wrapped" do
    it "fails" do
      present = Present.new()
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
    
  context "when a present is already wrapped" do
    it "fails" do
      present = Present.new()
      present.wrap("banana")
      expect { present.wrap("banana") }.to raise_error "A contents has already been wrapped."
    end
  end

  it "wraps a present" do
    present = Present.new()
    present.wrap("banana")
    gift = present.unwrap()
    expect(gift).to eq "banana"
  end
end
    
