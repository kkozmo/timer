class ClocksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clock, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy, :show]

  # GET /clocks
  # GET /clocks.json
  def index
  end

  # GET /clocks/1
  # GET /clocks/1.json
  def show
  end

  # GET /clocks/new
  def new
    @clock = current_user.clocks.build
  end

  # GET /clocks/1/edit
  def edit
  end

  # POST /clocks
  # POST /clocks.json
  def create
    @clock = current_user.clocks.build(clock_params)

    respond_to do |format|
      if @clock.save
        format.html { redirect_to @clock, notice: 'Clock was successfully created.' }
        format.json { render :show, status: :created, location: @clock }
      else
        format.html { render :new }
        format.json { render json: @clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clocks/1
  # PATCH/PUT /clocks/1.json
  def update
    respond_to do |format|
      if @clock.update(clock_params)
        format.html { redirect_to @clock, notice: 'Clock was successfully updated.' }
        format.json { render :show, status: :ok, location: @clock }
      else
        format.html { render :edit }
        format.json { render json: @clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clocks/1
  # DELETE /clocks/1.json
  def destroy
    @clock.destroy
    respond_to do |format|
      format.html { redirect_to clocks_url, notice: 'Clock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock
      @clock = Clock.find(params[:id])
    end

    def correct_user
      @clock = current_user.clocks.find_by(id: params[:id])
      redirect_to roots_path notice: "Not Authorized to edit this clock" if @clock.nil?
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def clock_params
      params.require(:clock).permit(:day, :time_start, :time_end, :notes)
    end
end

