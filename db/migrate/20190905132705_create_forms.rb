class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :category
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :segment
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
