class Question < ApplicationRecord
    has_many :answers,
        foreign_key: :quiz_id,
        class_name: :UserAnswer

    belongs_to :quiz,
        class_name: :Quiz,
        foreign_key: :quiz_id

    
end