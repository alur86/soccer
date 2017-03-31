require 'test_helper'

class OneTeanPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_tean_player = one_tean_players(:one)
  end

  test "should get index" do
    get one_tean_players_url
    assert_response :success
  end

  test "should get new" do
    get new_one_tean_player_url
    assert_response :success
  end

  test "should create one_tean_player" do
    assert_difference('OneTeanPlayer.count') do
      post one_tean_players_url, params: { one_tean_player: { age: @one_tean_player.age, event_id: @one_tean_player.event_id, first_name: @one_tean_player.first_name, last_name: @one_tean_player.last_name, team_id1: @one_tean_player.team_id1 } }
    end

    assert_redirected_to one_tean_player_url(OneTeanPlayer.last)
  end

  test "should show one_tean_player" do
    get one_tean_player_url(@one_tean_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_tean_player_url(@one_tean_player)
    assert_response :success
  end

  test "should update one_tean_player" do
    patch one_tean_player_url(@one_tean_player), params: { one_tean_player: { age: @one_tean_player.age, event_id: @one_tean_player.event_id, first_name: @one_tean_player.first_name, last_name: @one_tean_player.last_name, team_id1: @one_tean_player.team_id1 } }
    assert_redirected_to one_tean_player_url(@one_tean_player)
  end

  test "should destroy one_tean_player" do
    assert_difference('OneTeanPlayer.count', -1) do
      delete one_tean_player_url(@one_tean_player)
    end

    assert_redirected_to one_tean_players_url
  end
end
