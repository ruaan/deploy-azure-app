class BoardingpassesController < ApplicationController
  before_action :set_boardingpass, only: [:show, :edit, :update, :destroy]

  # GET /boardingpasses
  # GET /boardingpasses.json
  def index
    @boardingpasses = Boardingpass.all
  end

  # GET /boardingpasses/1
  # GET /boardingpasses/1.json
  def show
  end

  # GET /boardingpasses/new
  def new
    @boardingpass = Boardingpass.new
  end

  # GET /boardingpasses/1/edit
  def edit
  end

  # POST /boardingpasses
  # POST /boardingpasses.json
  def create
    @boardingpass = Boardingpass.new(boardingpass_params)

    respond_to do |format|
      if @boardingpass.save
        format.html { redirect_to @boardingpass, notice: 'Boardingpass was successfully created.' }
        format.json { render :show, status: :created, location: @boardingpass }
      else
        format.html { render :new }
        format.json { render json: @boardingpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boardingpasses/1
  # PATCH/PUT /boardingpasses/1.json
  def update
    respond_to do |format|
      if @boardingpass.update(boardingpass_params)
        format.html { redirect_to @boardingpass, notice: 'Boardingpass was successfully updated.' }
        format.json { render :show, status: :ok, location: @boardingpass }
      else
        format.html { render :edit }
        format.json { render json: @boardingpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boardingpasses/1
  # DELETE /boardingpasses/1.json
  def destroy
    @boardingpass.destroy
    respond_to do |format|
      format.html { redirect_to boardingpasses_url, notice: 'Boardingpass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boardingpass
      @boardingpass = Boardingpass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boardingpass_params
      params.require(:boardingpass).permit(:passengerName, :origin, :destination, :seat, :gate, :flight, :boardingTime, :boardingDate, :eticket, :ticketClass, :bookingRef, :frequentFlyerNumber, :sequence)
    end
end
