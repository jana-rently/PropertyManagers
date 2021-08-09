class CreateApproaches < ActiveRecord::Migration[6.1]
  def change
    create_table :approaches do |t|
        t.references :property, null: false, foreign_key: true
        t.references :renter, null: false, foreign_key: true
        t.integer :approachflag
        t.timestamps
      
    end
  end
end
