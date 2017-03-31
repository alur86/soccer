class SecondTeamsController < ApplicationController
  before_action :set_second_team, only: [:show, :edit, :update, :destroy]

  # GET /second_teams
  # GET /second_teams.json
  def index
    @second_teams = SecondTeam.all
  end

  # GET /second_teams/1
  # GET /second_teams/1.json
  def show
  end

  # GET /second_teams/new
  def new
    @second_team = SecondTeam.new
  end

  # GET /second_teams/1/edit
  def edit
  end

  # POST /second_teams
  # POST /second_teams.json
  def create
    @second_team = SecondTeam.new(second_team_params)

    respond_to do |format|
      if @second_team.save
        format.html { redirect_to @second_team, notice: 'Second team was successfully created.' }
        format.json { render :show, status: :created, location: @second_team }
      else
        format.html { render :new }
        format.json { render json: @second_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_teams/1
  # PATCH/PUT /second_teams/1.json
  def update
    respond_to do |format|
      if @second_team.update(second_team_params)
        format.html { redirect_to @second_team, notice: 'Second team was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_team }
      else
        format.html { render :edit }
        format.json { render json: @second_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_teams/1
  # DELETE /second_teams/1.json
  def destroy
    @second_team.destroy
    respond_to do |format|
      format.html { redirect_to second_teams_url, notice: 'Second team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_team
      @second_team = SecondTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_team_params
      params.require(:second_team).permit(:title, :game_id)
    end
end
