# File: spec/gratitudes_spec.rb

require 'gratitudes'

RSpec.describe Gratitudes do
  it "it lists things to be grateful for" do
    gratitudes = Gratitudes.new()
    gratitudes.add("carrots")
    gratitudes.add("bananas")
    result = gratitudes.format()
    #puts result
    expect(result).to eq "Be grateful for: carrots, bananas"
  end
end