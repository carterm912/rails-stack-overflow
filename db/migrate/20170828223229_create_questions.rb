class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
