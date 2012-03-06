class CreateDisputes < ActiveRecord::Migration
  def change
    create_table :disputes do |t|
      t.string :title
      t.integer :company_id
      t.string :disputed_amount
      t.text :description
      t.boolean :private

      t.timestamps
    end
  end
end
