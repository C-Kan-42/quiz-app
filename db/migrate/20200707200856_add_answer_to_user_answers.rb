class AddAnswerToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :answer, :text
  end
end
