require "test_helper"

class QuestionnaireTest < ActiveSupport::TestCase
  test "stores questions in jsonb column" do
    questionnaire = Questionnaire.new
    questionnaire.question1 = "How are you?"
    questionnaire.question2 = "How old are you?"

    questionnaire.save!

    questionnaire.reload
    assert_equal questionnaire.question1, "How are you?"
    assert_equal questionnaire.question2, "How old are you?"

    assert_nothing_raised { JSON.parse(questionnaire.questions_for_database) }
    assert_instance_of(Hash, JSON.parse(questionnaire.questions_for_database))

    assert_equal questionnaire.id,
      Questionnaire.where("questions ->> 'question1' = 'How are you?'").first.id
  end
end
