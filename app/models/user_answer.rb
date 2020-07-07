class UserAnswer < ApplicationRecord
    belongs_to :question,
        class_name: :Question,
        foreign_key: :question_id

    belongs_to :user,
        class_name: :User,
        foreign_key: :user_id
end