class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :category_ships
  has_many :daily_tasks, :through => :category_ships
end
