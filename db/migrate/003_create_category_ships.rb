class CreateCategoryShips < ActiveRecord::Migration
  def self.up
    create_table :category_ships do |t|
      
    end
  end

  def self.down
    drop_table :category_ships
  end
end
