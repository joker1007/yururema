require 'spec_helper'

describe "DailyTask Model" do
  let(:daily_task) { DailyTask.new }
  it 'can be created' do
    daily_task.should_not be_nil
  end
end
