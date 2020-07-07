class Quiz < ApplicationRecord
    has_many :questions,
        foreign_key: :quiz_id,
        class_name: :Question,
        dependent: :destroy

    validate :questions do
        errors.add(:questions, "A quiz should have at least one question") if self.questions.length <= 0
    end
end