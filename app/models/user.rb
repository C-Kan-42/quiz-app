class User < ApplicationRecord
    validates :email, presence: true

    has_many :answers,
        foreign_key: :user_id,
        class_name: :User_Answer,
        dependent: :destroy


end