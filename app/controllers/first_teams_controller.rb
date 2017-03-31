class FirstTeamsController < ApplicationController
  before_action :set_first_team, only: [:show, :edit, :update, :destroy]

  # GET /first_teams
  # GET /first_teams.json
  def index
    @first_teams = FirstTeam.all
  end

  # GET /first_teams/1
  # GET /first_teams/1.json
  def show
  end

  # GET /first_teams/new
  def new
    @first_team = FirstTeam.new
  end

  # GET /first_teams/1/edit
  def edit
  end

  # POST /first_teams
  # POST /first_teams.json
  def create
    @first_team = FirstTeam.new(first_team_params)

    respond_to do |format|
      if @first_team.save
        format.html { redirect_to @first_team, notice: 'First team was successfully created.' }
        format.json { render :show, status: :created, location: @first_team }
      else
        format.html { render :new }
        format.json { render json: @first_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_teams/1
  # PATCH/PUT /first_teams/1.json
  def update
    respond_to do |format|
      if @first_team.update(first_team_params)
        format.html { redirect_to @first_team, notice: 'First team was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_team }
      else
        format.html { render :edit }
        format.json { render json: @first_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_teams/1
  # DELETE /first_teams/1.json
  def destroy
    @first_team.destroy
    respond_to do |format|
      format.html { redirect_to first_teams_url, notice: 'First team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_team
      @first_team = FirstTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_team_params
      params.require(:first_team).permit(:title, :game_id)
    end
end
