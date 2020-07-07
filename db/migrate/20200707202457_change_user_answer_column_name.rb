class ChangeUserAnswerColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :quiz_id, :question_id

  end
end
