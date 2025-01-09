class Questionnaire < ApplicationRecord
  QUESTION_LIST = %w[question1 question2]

  store :questions, accessors: QUESTION_LIST
end
