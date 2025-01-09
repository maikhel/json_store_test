require "test_helper"

class QuestionnaireTest < ActiveSupport::TestCase
  test "stores questions in jsonb column" do
    questionnaire = Questionnaire.new
    questionnaire.question1 = "How are you?"
    questionnaire.question2 = "How old are you?"

    questionnaire.save!

    questionnaire.reload
    assert questionnaire.question1, "How are you?"
    assert questionnaire.question2, "How old are you?"
  end
end
