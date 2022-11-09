# File: spec/report_length_spec.rb

require 'report_length'

RSpec.describe "report_length method" do
  it "returns 'str'.length when passed 'str'" do
    str = "test"
    expect(report_length(str)).to eq "This string was #{str.length} characters long."
  end
end
