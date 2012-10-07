class CreateForemConfigurations < ActiveRecord::Migration
  def change
    create_table :forem_configurations do |t|
      t.bool :post_approval

      t.timestamps
    end
  end
end
