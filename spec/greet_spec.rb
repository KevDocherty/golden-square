# File: spec/greet_spec.rb
require 'greet'

RSpec.describe "greet method" do
  #it "adds 5 to 3 to return 8" do
  it "receives a name and returns a greeting" do
    #result = add_five(3)
    result = greet("Kev")
    #expect(result).to eq 8
    expect(result).to eq "Hello, Kev!"
  end
end