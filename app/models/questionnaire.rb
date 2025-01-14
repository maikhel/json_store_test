class Questionnaire < ApplicationRecord
  QUESTION_LIST = %w[question1 question2]

  store_accessor :questions, *QUESTION_LIST
end
