require 'test_helper'

class FirstNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_name = first_names(:one)
  end

  test "should get index" do
    get first_names_url
    assert_response :success
  end

  test "should get new" do
    get new_first_name_url
    assert_response :success
  end

  test "should create first_name" do
    assert_difference('FirstName.count') do
      post first_names_url, params: { first_name: { api_standard_profile_request: @first_name.api_standard_profile_request, current_share: @first_name.current_share, email_address: @first_name.email_address, formatted_name: @first_name.formatted_name, formatted_phonetic_name: @first_name.formatted_phonetic_name, headline: @first_name.headline, industry: @first_name.industry, last_name: @first_name.last_name, location: @first_name.location, maiden_name: @first_name.maiden_name, num_connections: @first_name.num_connections, num_connections_capped: @first_name.num_connections_capped, phonetic_first_name: @first_name.phonetic_first_name, phonetic_last_name: @first_name.phonetic_last_name, picture_url: @first_name.picture_url, picture_url_original: @first_name.picture_url_original, positions: @first_name.positions, public_profile_url: @first_name.public_profile_url, site_standard_profile_request: @first_name.site_standard_profile_request, specialties: @first_name.specialties, sumary: @first_name.sumary } }
    end

    assert_redirected_to first_name_url(FirstName.last)
  end

  test "should show first_name" do
    get first_name_url(@first_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_name_url(@first_name)
    assert_response :success
  end

  test "should update first_name" do
    patch first_name_url(@first_name), params: { first_name: { api_standard_profile_request: @first_name.api_standard_profile_request, current_share: @first_name.current_share, email_address: @first_name.email_address, formatted_name: @first_name.formatted_name, formatted_phonetic_name: @first_name.formatted_phonetic_name, headline: @first_name.headline, industry: @first_name.industry, last_name: @first_name.last_name, location: @first_name.location, maiden_name: @first_name.maiden_name, num_connections: @first_name.num_connections, num_connections_capped: @first_name.num_connections_capped, phonetic_first_name: @first_name.phonetic_first_name, phonetic_last_name: @first_name.phonetic_last_name, picture_url: @first_name.picture_url, picture_url_original: @first_name.picture_url_original, positions: @first_name.positions, public_profile_url: @first_name.public_profile_url, site_standard_profile_request: @first_name.site_standard_profile_request, specialties: @first_name.specialties, sumary: @first_name.sumary } }
    assert_redirected_to first_name_url(@first_name)
  end

  test "should destroy first_name" do
    assert_difference('FirstName.count', -1) do
      delete first_name_url(@first_name)
    end

    assert_redirected_to first_names_url
  end
end
