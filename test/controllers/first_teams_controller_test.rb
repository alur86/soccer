require 'test_helper'

class FirstTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_team = first_teams(:one)
  end

  test "should get index" do
    get first_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_first_team_url
    assert_response :success
  end

  test "should create first_team" do
    assert_difference('FirstTeam.count') do
      post first_teams_url, params: { first_team: { game_id: @first_team.game_id, title: @first_team.title } }
    end

    assert_redirected_to first_team_url(FirstTeam.last)
  end

  test "should show first_team" do
    get first_team_url(@first_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_team_url(@first_team)
    assert_response :success
  end

  test "should update first_team" do
    patch first_team_url(@first_team), params: { first_team: { game_id: @first_team.game_id, title: @first_team.title } }
    assert_redirected_to first_team_url(@first_team)
  end

  test "should destroy first_team" do
    assert_difference('FirstTeam.count', -1) do
      delete first_team_url(@first_team)
    end

    assert_redirected_to first_teams_url
  end
end
