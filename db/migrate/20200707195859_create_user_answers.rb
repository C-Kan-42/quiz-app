class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :response_time

      t.datetime :created_at
      t.datetime :updated_at
    end

    add_index :user_answers, :answer_id
    add_index :user_answers, :user_id
  end
end
