class DailyTask < ActiveRecord::Base
  validates_presence_of :title
  has_many :category_ships
  has_many :categories, :through => :category_ships
end
