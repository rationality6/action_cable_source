class CreatePostTests < ActiveRecord::Migration[5.2]
  def change
    create_table :post_tests do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
