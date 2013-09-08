class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.integer :phone
      t.text :address
      t.string :email
      t.integer :itemcode
      t.integer :pieces
      t.text :comments

      t.timestamps
    end
  end
end
