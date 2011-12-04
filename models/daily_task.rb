class DailyTask < ActiveRecord::Base
  validates_presence_of :title
  has_many :category_ships
  has_many :categories, :through => :category_ships

  def self.get_category_count(category_name = nil)
    if category_name
      category = Category.find_by_name(category_name)
      category.daily_tasks.count
    else
      DailyTask.all.count
    end
  end
end
