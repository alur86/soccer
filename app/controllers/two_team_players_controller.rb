class TwoTeamPlayersController < ApplicationController
  before_action :set_two_team_player, only: [:show, :edit, :update, :destroy]

  # GET /two_team_players
  # GET /two_team_players.json
  def index
    @two_team_players = TwoTeamPlayer.all
  end

  # GET /two_team_players/1
  # GET /two_team_players/1.json
  def show
  end

  # GET /two_team_players/new
  def new
    @two_team_player = TwoTeamPlayer.new
  end

  # GET /two_team_players/1/edit
  def edit
  end

  # POST /two_team_players
  # POST /two_team_players.json
  def create
    @two_team_player = TwoTeamPlayer.new(two_team_player_params)

    respond_to do |format|
      if @two_team_player.save
        format.html { redirect_to @two_team_player, notice: 'Two team player was successfully created.' }
        format.json { render :show, status: :created, location: @two_team_player }
      else
        format.html { render :new }
        format.json { render json: @two_team_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /two_team_players/1
  # PATCH/PUT /two_team_players/1.json
  def update
    respond_to do |format|
      if @two_team_player.update(two_team_player_params)
        format.html { redirect_to @two_team_player, notice: 'Two team player was successfully updated.' }
        format.json { render :show, status: :ok, location: @two_team_player }
      else
        format.html { render :edit }
        format.json { render json: @two_team_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /two_team_players/1
  # DELETE /two_team_players/1.json
  def destroy
    @two_team_player.destroy
    respond_to do |format|
      format.html { redirect_to two_team_players_url, notice: 'Two team player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_two_team_player
      @two_team_player = TwoTeamPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def two_team_player_params
      params.require(:two_team_player).permit(:first_name, :last_name, :age, :team_id2, :event_id)
    end
end
