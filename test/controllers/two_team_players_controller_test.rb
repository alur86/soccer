require 'test_helper'

class TwoTeamPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @two_team_player = two_team_players(:one)
  end

  test "should get index" do
    get two_team_players_url
    assert_response :success
  end

  test "should get new" do
    get new_two_team_player_url
    assert_response :success
  end

  test "should create two_team_player" do
    assert_difference('TwoTeamPlayer.count') do
      post two_team_players_url, params: { two_team_player: { age: @two_team_player.age, event_id: @two_team_player.event_id, first_name: @two_team_player.first_name, last_name: @two_team_player.last_name, team_id2: @two_team_player.team_id2 } }
    end

    assert_redirected_to two_team_player_url(TwoTeamPlayer.last)
  end

  test "should show two_team_player" do
    get two_team_player_url(@two_team_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_two_team_player_url(@two_team_player)
    assert_response :success
  end

  test "should update two_team_player" do
    patch two_team_player_url(@two_team_player), params: { two_team_player: { age: @two_team_player.age, event_id: @two_team_player.event_id, first_name: @two_team_player.first_name, last_name: @two_team_player.last_name, team_id2: @two_team_player.team_id2 } }
    assert_redirected_to two_team_player_url(@two_team_player)
  end

  test "should destroy two_team_player" do
    assert_difference('TwoTeamPlayer.count', -1) do
      delete two_team_player_url(@two_team_player)
    end

    assert_redirected_to two_team_players_url
  end
end
