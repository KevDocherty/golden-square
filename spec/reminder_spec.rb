# File: spec/reminder_spec.rb

require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kev")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kev!"
  end
end