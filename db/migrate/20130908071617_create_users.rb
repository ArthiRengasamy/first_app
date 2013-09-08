class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.text :address
      t.string :area
      t.text :other

      t.timestamps
    end
  end
end
