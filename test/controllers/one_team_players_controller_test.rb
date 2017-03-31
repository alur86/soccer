require 'test_helper'

class OneTeamPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_team_player = one_team_players(:one)
  end

  test "should get index" do
    get one_team_players_url
    assert_response :success
  end

  test "should get new" do
    get new_one_team_player_url
    assert_response :success
  end

  test "should create one_team_player" do
    assert_difference('OneTeamPlayer.count') do
      post one_team_players_url, params: { one_team_player: { age: @one_team_player.age, event_id: @one_team_player.event_id, first_name: @one_team_player.first_name, last_name: @one_team_player.last_name, team_id2: @one_team_player.team_id2 } }
    end

    assert_redirected_to one_team_player_url(OneTeamPlayer.last)
  end

  test "should show one_team_player" do
    get one_team_player_url(@one_team_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_team_player_url(@one_team_player)
    assert_response :success
  end

  test "should update one_team_player" do
    patch one_team_player_url(@one_team_player), params: { one_team_player: { age: @one_team_player.age, event_id: @one_team_player.event_id, first_name: @one_team_player.first_name, last_name: @one_team_player.last_name, team_id2: @one_team_player.team_id2 } }
    assert_redirected_to one_team_player_url(@one_team_player)
  end

  test "should destroy one_team_player" do
    assert_difference('OneTeamPlayer.count', -1) do
      delete one_team_player_url(@one_team_player)
    end

    assert_redirected_to one_team_players_url
  end
end
