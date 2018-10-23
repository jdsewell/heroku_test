class SportsPeopleController < ApplicationController
  before_action :set_sports_person, only: [:show, :edit, :update, :destroy]

  # GET /sports_people
  # GET /sports_people.json
  def index
    @sports_people = SportsPerson.all
  end

  # GET /sports_people/1
  # GET /sports_people/1.json
  def show
  end

  # GET /sports_people/new
  def new
    @sports_person = SportsPerson.new
  end

  # GET /sports_people/1/edit
  def edit
  end

  # POST /sports_people
  # POST /sports_people.json
  def create
    @sports_person = SportsPerson.new(sports_person_params)

    respond_to do |format|
      if @sports_person.save
        format.html { redirect_to @sports_person, notice: 'Sports person was successfully created.' }
        format.json { render :show, status: :created, location: @sports_person }
      else
        format.html { render :new }
        format.json { render json: @sports_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sports_people/1
  # PATCH/PUT /sports_people/1.json
  def update
    respond_to do |format|
      if @sports_person.update(sports_person_params)
        format.html { redirect_to @sports_person, notice: 'Sports person was successfully updated.' }
        format.json { render :show, status: :ok, location: @sports_person }
      else
        format.html { render :edit }
        format.json { render json: @sports_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sports_people/1
  # DELETE /sports_people/1.json
  def destroy
    @sports_person.destroy
    respond_to do |format|
      format.html { redirect_to sports_people_url, notice: 'Sports person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sports_person
      @sports_person = SportsPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sports_person_params
      params.require(:sports_person).permit(:name, :team, :avatar)
    end
end
