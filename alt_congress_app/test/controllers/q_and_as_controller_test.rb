require 'test_helper'

class QAndAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @q_and_a = q_and_as(:one)
  end

  test "should get index" do
    get q_and_as_url, as: :json
    assert_response :success
  end

  test "should create q_and_a" do
    assert_difference('QAndA.count') do
      post q_and_as_url, params: { q_and_a: { answer: @q_and_a.answer, question: @q_and_a.question } }, as: :json
    end

    assert_response 201
  end

  test "should show q_and_a" do
    get q_and_a_url(@q_and_a), as: :json
    assert_response :success
  end

  test "should update q_and_a" do
    patch q_and_a_url(@q_and_a), params: { q_and_a: { answer: @q_and_a.answer, question: @q_and_a.question } }, as: :json
    assert_response 200
  end

  test "should destroy q_and_a" do
    assert_difference('QAndA.count', -1) do
      delete q_and_a_url(@q_and_a), as: :json
    end

    assert_response 204
  end
end
