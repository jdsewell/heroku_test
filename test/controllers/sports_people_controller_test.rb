require 'test_helper'

class SportsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sports_person = sports_people(:one)
  end

  test "should get index" do
    get sports_people_url
    assert_response :success
  end

  test "should get new" do
    get new_sports_person_url
    assert_response :success
  end

  test "should create sports_person" do
    assert_difference('SportsPerson.count') do
      post sports_people_url, params: { sports_person: { avatar: @sports_person.avatar, name: @sports_person.name, team: @sports_person.team } }
    end

    assert_redirected_to sports_person_url(SportsPerson.last)
  end

  test "should show sports_person" do
    get sports_person_url(@sports_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_sports_person_url(@sports_person)
    assert_response :success
  end

  test "should update sports_person" do
    patch sports_person_url(@sports_person), params: { sports_person: { avatar: @sports_person.avatar, name: @sports_person.name, team: @sports_person.team } }
    assert_redirected_to sports_person_url(@sports_person)
  end

  test "should destroy sports_person" do
    assert_difference('SportsPerson.count', -1) do
      delete sports_person_url(@sports_person)
    end

    assert_redirected_to sports_people_url
  end
end
