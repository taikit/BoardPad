class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :board_id, nil:false
      t.string :name
      t.string :content
      t.string :image

      t.timestamps null: false
    end
  end
end
