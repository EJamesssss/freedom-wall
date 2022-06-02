class CreatePosts < ActiveRecord::Migration[6.1]
  def up
    create_table :posts do |t|
      t.string :topic
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
