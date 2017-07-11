require 'test_helper'

class MyIdeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_idea = my_ideas(:one)
  end

  test "should get index" do
    get my_ideas_url
    assert_response :success
  end

  test "should get new" do
    get new_my_idea_url
    assert_response :success
  end

  test "should create my_idea" do
    assert_difference('MyIdea.count') do
      post my_ideas_url, params: { my_idea: { picture: @my_idea.picture, picture_des: @my_idea.picture_des } }
    end

    assert_redirected_to my_idea_url(MyIdea.last)
  end

  test "should show my_idea" do
    get my_idea_url(@my_idea)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_idea_url(@my_idea)
    assert_response :success
  end

  test "should update my_idea" do
    patch my_idea_url(@my_idea), params: { my_idea: { picture: @my_idea.picture, picture_des: @my_idea.picture_des } }
    assert_redirected_to my_idea_url(@my_idea)
  end

  test "should destroy my_idea" do
    assert_difference('MyIdea.count', -1) do
      delete my_idea_url(@my_idea)
    end

    assert_redirected_to my_ideas_url
  end
end
