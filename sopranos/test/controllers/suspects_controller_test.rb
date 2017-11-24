require 'test_helper'

class SuspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suspect = suspects(:one)
  end

  test "should get index" do
    get suspects_url, as: :json
    assert_response :success
  end

  test "should create suspect" do
    assert_difference('Suspect.count') do
      post suspects_url, params: { suspect: { character_id: @suspect.character_id, question_id: @suspect.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show suspect" do
    get suspect_url(@suspect), as: :json
    assert_response :success
  end

  test "should update suspect" do
    patch suspect_url(@suspect), params: { suspect: { character_id: @suspect.character_id, question_id: @suspect.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy suspect" do
    assert_difference('Suspect.count', -1) do
      delete suspect_url(@suspect), as: :json
    end

    assert_response 204
  end
end
