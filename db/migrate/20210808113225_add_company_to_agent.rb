class AddCompanyToAgent < ActiveRecord::Migration[6.1]
  def change
    add_reference :agents, :company, null: false, foreign_key: true
  end
end
