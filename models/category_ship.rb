class CategoryShip < ActiveRecord::Base
  belongs_to :daily_task
  belongs_to :category
end
