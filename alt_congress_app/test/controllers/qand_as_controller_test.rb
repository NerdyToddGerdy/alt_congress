require 'test_helper'

class QandAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qand_a = qand_as(:one)
  end

  test "should get index" do
    get qand_as_url, as: :json
    assert_response :success
  end

  test "should create qand_a" do
    assert_difference('QandA.count') do
      post qand_as_url, params: { qand_a: { answer: @qand_a.answer, question: @qand_a.question } }, as: :json
    end

    assert_response 201
  end

  test "should show qand_a" do
    get qand_a_url(@qand_a), as: :json
    assert_response :success
  end

  test "should update qand_a" do
    patch qand_a_url(@qand_a), params: { qand_a: { answer: @qand_a.answer, question: @qand_a.question } }, as: :json
    assert_response 200
  end

  test "should destroy qand_a" do
    assert_difference('QandA.count', -1) do
      delete qand_a_url(@qand_a), as: :json
    end

    assert_response 204
  end
end
