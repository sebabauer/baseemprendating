require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { api_standard_profile_request: @user.api_standard_profile_request, current_share: @user.current_share, email_address: @user.email_address, first_name: @user.first_name, formatted_name: @user.formatted_name, formatted_phonetic_name: @user.formatted_phonetic_name, headline: @user.headline, industry: @user.industry, last_name: @user.last_name, location: @user.location, maiden_name: @user.maiden_name, num_connections: @user.num_connections, num_connections_capped: @user.num_connections_capped, phonetic_first_name: @user.phonetic_first_name, phonetic_last_name: @user.phonetic_last_name, picture_url: @user.picture_url, picture_url_original: @user.picture_url_original, positions: @user.positions, public_profile_url: @user.public_profile_url, site_standard_profile_request: @user.site_standard_profile_request, specialties: @user.specialties, sumary: @user.sumary } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { api_standard_profile_request: @user.api_standard_profile_request, current_share: @user.current_share, email_address: @user.email_address, first_name: @user.first_name, formatted_name: @user.formatted_name, formatted_phonetic_name: @user.formatted_phonetic_name, headline: @user.headline, industry: @user.industry, last_name: @user.last_name, location: @user.location, maiden_name: @user.maiden_name, num_connections: @user.num_connections, num_connections_capped: @user.num_connections_capped, phonetic_first_name: @user.phonetic_first_name, phonetic_last_name: @user.phonetic_last_name, picture_url: @user.picture_url, picture_url_original: @user.picture_url_original, positions: @user.positions, public_profile_url: @user.public_profile_url, site_standard_profile_request: @user.site_standard_profile_request, specialties: @user.specialties, sumary: @user.sumary } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
