belongs_to :quiz

validates :quiz, presence: true

def start!(config = {})
    config[:mode] ||= :scheduled

    self.current_question_index = 0
    self.starting_date = DateTime.now()
    # subscribe
end