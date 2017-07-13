class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :img_url
      t.string :event
      t.string :address
      t.string :time
      t.string :date
      t.string :price
      t.text :text

      t.timestamps
    end
  end
end
