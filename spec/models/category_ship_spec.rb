require 'spec_helper'

describe "CategoryShip Model" do
  let(:category_ship) { CategoryShip.new }
  it 'can be created' do
    category_ship.should_not be_nil
  end
end
