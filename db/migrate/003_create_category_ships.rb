class CreateCategoryShips < ActiveRecord::Migration
  def self.up
    create_table :category_ships do |t|
      t.integer :daily_task_id
      t.integer :category_id
    end
    add_index :category_ships, :daily_task_id
    add_index :category_ships, :category_id
  end

  def self.down
    drop_table :category_ships
  end
end
