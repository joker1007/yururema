require 'spec_helper'

describe "DailyTask Model" do
  let(:daily_task) { DailyTask.new }
  let(:daily_task_no_title) { DailyTask.new(:desc => "task description") }
  it 'can be created' do
    daily_task.should_not be_nil
  end

  it 'cannot be blank title' do
    daily_task.valid?.should be_false
    daily_task_no_title.valid?.should be_false
  end
end
