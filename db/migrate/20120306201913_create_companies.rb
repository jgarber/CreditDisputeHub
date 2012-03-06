class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :department
      t.string :phone
      t.string :fax
      t.string :address
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
