class FamousPeopleController < ApplicationController
  before_action :set_famous_person, only: [:show, :edit, :update, :destroy]

  # GET /famous_people
  # GET /famous_people.json
  def index
    @famous_people = FamousPerson.all
  end

  # GET /famous_people/1
  # GET /famous_people/1.json
  def show
  end

  # GET /famous_people/new
  def new
    @famous_person = FamousPerson.new
  end

  # GET /famous_people/1/edit
  def edit
  end

  # POST /famous_people
  # POST /famous_people.json
  def create
    @famous_person = FamousPerson.new(famous_person_params)

    respond_to do |format|
      if @famous_person.save
        format.html { redirect_to @famous_person, notice: 'Famous person was successfully created.' }
        format.json { render :show, status: :created, location: @famous_person }
      else
        format.html { render :new }
        format.json { render json: @famous_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /famous_people/1
  # PATCH/PUT /famous_people/1.json
  def update
    respond_to do |format|
      if @famous_person.update(famous_person_params)
        format.html { redirect_to @famous_person, notice: 'Famous person was successfully updated.' }
        format.json { render :show, status: :ok, location: @famous_person }
      else
        format.html { render :edit }
        format.json { render json: @famous_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /famous_people/1
  # DELETE /famous_people/1.json
  def destroy
    @famous_person.destroy
    respond_to do |format|
      format.html { redirect_to famous_people_url, notice: 'Famous person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_famous_person
      @famous_person = FamousPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def famous_person_params
      params.require(:famous_person).permit(:name, :hometown)
    end
end
