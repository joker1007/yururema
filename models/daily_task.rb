class DailyTask < ActiveRecord::Base
  validates_presence_of :title
  has_many :category_ships
  has_many :categories, :through => :category_ships

  scope :category, ->(category_name) {
    return scoped unless category_name
    category = Category.find_by_name(category_name)
    scoped.joins(:category_ships).where("category_id = ?", category.id)
  }

  def self.get_category_count(category_name = nil)
    if category_name
      self.category(category_name).count
    else
      DailyTask.all.count
    end
  end

  def self.get_random(category_name, count)
    if count >= self.get_category_count(category_name)
      DailyTask.category(category_name)
    else
      output = []
      count.times do |i|
        offset_num = rand(count)
        output << category(category_name).offset(offset_num).limit(1)
      end
      output.flatten
    end
  end
end
