class CreateApllies < ActiveRecord::Migration[5.1]
  def change
    create_table :apllies do |t|
      t.string :title
      t.text :body
      t.string :name
      t.integer :edad

      t.timestamps
    end
  end
end
