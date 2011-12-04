class CreateDailyTasks < ActiveRecord::Migration
  def self.up
    create_table :daily_tasks do |t|
      t.string :title
      t.string :desc
    end
  end

  def self.down
    drop_table :daily_tasks
  end
end
