class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :chatroom, null: false, foreign_key: true
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
