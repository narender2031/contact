class CreateContactphones < ActiveRecord::Migration[5.1]
  def change
    create_table :contactphones do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
