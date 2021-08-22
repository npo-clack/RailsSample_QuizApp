require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get quizzes_home_url
    assert_response :success
  end

  test "should get question" do
    get quizzes_question_url
    assert_response :success
  end

  test "should get answer" do
    get quizzes_answer_url
    assert_response :success
  end

end
