require 'test_helper'

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get user_details_url
    assert_response :success
  end

  test "should get new" do
    get new_user_detail_url
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post user_details_url, params: { user_detail: { dateOfBirth: @user_detail.dateOfBirth, emailAddress: @user_detail.emailAddress, firstname: @user_detail.firstname, lastname: @user_detail.lastname, middlename: @user_detail.middlename, password: @user_detail.password, phoneno: @user_detail.phoneno, username: @user_detail.username } }
    end

    assert_redirected_to user_detail_url(UserDetail.last)
  end

  test "should show user_detail" do
    get user_detail_url(@user_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_detail_url(@user_detail)
    assert_response :success
  end

  test "should update user_detail" do
    patch user_detail_url(@user_detail), params: { user_detail: { dateOfBirth: @user_detail.dateOfBirth, emailAddress: @user_detail.emailAddress, firstname: @user_detail.firstname, lastname: @user_detail.lastname, middlename: @user_detail.middlename, password: @user_detail.password, phoneno: @user_detail.phoneno, username: @user_detail.username } }
    assert_redirected_to user_detail_url(@user_detail)
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete user_detail_url(@user_detail)
    end

    assert_redirected_to user_details_url
  end
end
