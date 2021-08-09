class Companies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :about
      t.integer :year

      t.timestamps
    end
  end
end
