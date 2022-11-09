# File: spec/counter_spec.rb

require "counter"

RSpec.describe Counter do
  it "starts from zero and keeps count" do
    counter = Counter.new()
    counter.add(5)
    result = counter.report()
    puts result
    expect(result).to eq "Counted to 5 so far."
  end
end
