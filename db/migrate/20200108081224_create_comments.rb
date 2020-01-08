class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.string :title, null: false
      t.text :text, null: false
      t.string :year, null: false
      t.string :month, null: false
      t.string :day, null: false
      t.timestamps
    end
  end
end
