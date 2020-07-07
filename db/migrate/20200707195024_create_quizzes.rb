class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :owner_email

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
