class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :body
      t.references :user, foreign_key: true 
    end
  end
end
