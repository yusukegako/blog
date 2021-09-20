class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.text :text
      t.integer :user_id
      t.timestamps
    end
  end
end
