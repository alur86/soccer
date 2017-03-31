require 'test_helper'

class SecondTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @second_team = second_teams(:one)
  end

  test "should get index" do
    get second_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_second_team_url
    assert_response :success
  end

  test "should create second_team" do
    assert_difference('SecondTeam.count') do
      post second_teams_url, params: { second_team: { game_id: @second_team.game_id, title: @second_team.title } }
    end

    assert_redirected_to second_team_url(SecondTeam.last)
  end

  test "should show second_team" do
    get second_team_url(@second_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_second_team_url(@second_team)
    assert_response :success
  end

  test "should update second_team" do
    patch second_team_url(@second_team), params: { second_team: { game_id: @second_team.game_id, title: @second_team.title } }
    assert_redirected_to second_team_url(@second_team)
  end

  test "should destroy second_team" do
    assert_difference('SecondTeam.count', -1) do
      delete second_team_url(@second_team)
    end

    assert_redirected_to second_teams_url
  end
end
