class CreateMypictures < ActiveRecord::Migration[5.2]
  def change
    create_table :mypictures do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
