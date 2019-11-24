class ArthiclesController < ApplicationController
  before_action :set_arthicle, only: [:show, :edit, :update, :destroy]

  # GET /arthicles
  # GET /arthicles.json
  def index
    @arthicles = Arthicle.all
  end

  # GET /arthicles/1
  # GET /arthicles/1.json
  def show
  end

  # GET /arthicles/new
  def new
    @arthicle = Arthicle.new
  end

  # GET /arthicles/1/edit
  def edit
  end

  # POST /arthicles
  # POST /arthicles.json
  def create
    @arthicle = Arthicle.new(arthicle_params)

    respond_to do |format|
      if @arthicle.save
        format.html { redirect_to @arthicle, notice: 'Arthicle was successfully created.' }
        format.json { render :show, status: :created, location: @arthicle }
      else
        format.html { render :new }
        format.json { render json: @arthicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arthicles/1
  # PATCH/PUT /arthicles/1.json
  def update
    respond_to do |format|
      if @arthicle.update(arthicle_params)
        format.html { redirect_to @arthicle, notice: 'Arthicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @arthicle }
      else
        format.html { render :edit }
        format.json { render json: @arthicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arthicles/1
  # DELETE /arthicles/1.json
  def destroy
    @arthicle.destroy
    respond_to do |format|
      format.html { redirect_to arthicles_url, notice: 'Arthicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arthicle
      @arthicle = Arthicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arthicle_params
      params.require(:arthicle).permit(:title, :author, :text)
    end
end
