require 'test_helper'

class QuestAndAnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quest_and_an = quest_and_ans(:one)
  end

  test "should get index" do
    get quest_and_ans_url, as: :json
    assert_response :success
  end

  test "should create quest_and_an" do
    assert_difference('QuestAndAn.count') do
      post quest_and_ans_url, params: { quest_and_an: { answer: @quest_and_an.answer, question: @quest_and_an.question } }, as: :json
    end

    assert_response 201
  end

  test "should show quest_and_an" do
    get quest_and_an_url(@quest_and_an), as: :json
    assert_response :success
  end

  test "should update quest_and_an" do
    patch quest_and_an_url(@quest_and_an), params: { quest_and_an: { answer: @quest_and_an.answer, question: @quest_and_an.question } }, as: :json
    assert_response 200
  end

  test "should destroy quest_and_an" do
    assert_difference('QuestAndAn.count', -1) do
      delete quest_and_an_url(@quest_and_an), as: :json
    end

    assert_response 204
  end
end
