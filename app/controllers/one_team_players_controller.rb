class OneTeamPlayersController < ApplicationController
  before_action :set_one_team_player, only: [:show, :edit, :update, :destroy]

  # GET /one_team_players
  # GET /one_team_players.json
  def index
    @one_team_players = OneTeamPlayer.all
  end

  # GET /one_team_players/1
  # GET /one_team_players/1.json
  def show
  end

  # GET /one_team_players/new
  def new
    @one_team_player = OneTeamPlayer.new
  end

  # GET /one_team_players/1/edit
  def edit
  end

  # POST /one_team_players
  # POST /one_team_players.json
  def create
    @one_team_player = OneTeamPlayer.new(one_team_player_params)

    respond_to do |format|
      if @one_team_player.save
        format.html { redirect_to @one_team_player, notice: 'One team player was successfully created.' }
        format.json { render :show, status: :created, location: @one_team_player }
      else
        format.html { render :new }
        format.json { render json: @one_team_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_team_players/1
  # PATCH/PUT /one_team_players/1.json
  def update
    respond_to do |format|
      if @one_team_player.update(one_team_player_params)
        format.html { redirect_to @one_team_player, notice: 'One team player was successfully updated.' }
        format.json { render :show, status: :ok, location: @one_team_player }
      else
        format.html { render :edit }
        format.json { render json: @one_team_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_team_players/1
  # DELETE /one_team_players/1.json
  def destroy
    @one_team_player.destroy
    respond_to do |format|
      format.html { redirect_to one_team_players_url, notice: 'One team player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_team_player
      @one_team_player = OneTeamPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_team_player_params
      params.require(:one_team_player).permit(:first_name, :last_name, :age, :team_id2, :event_id)
    end
end
