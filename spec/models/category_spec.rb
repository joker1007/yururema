require 'spec_helper'

describe "Category Model" do
  let(:category) { Category.new }
  it 'can be created' do
    category.should_not be_nil
  end
end
