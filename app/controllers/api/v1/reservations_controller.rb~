class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
   @reservation = Reservation.all
   render json: @reservation
  end

  # GET /reservation/1
  # GET /reservation/1.json
  def show
   render json: @reservation
  end


  # GET /reservation/new
  def new
    @reservation = Reservation.new
  end

  # GET /reservation/1/edit
  def edit
  end

  # POST /reservation
  # POST /reservation.json 
def create
    @reservation = Reservation.new(reservation_params)
   if @reservation.save
    render json: @reservation, status: :created, location:        api_v1_reservation_url(@reservation)
   else
    render json: @reservation.errors, status: :unprocessable_entity
   end
  end


  # PATCH/PUT /reservation/1
  # PATCH/PUT /reservation/1.json
def update
   if @reservation.update(resrvation_params)
    render json: @reservation
   else
    render json: @reservation.errors, status: :unprocessable_entity
   end
  end

  # DELETE /reservation/1
  # DELETE /reservation/1.json
 def destroy
   @reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:guest_id, :table_id, :shift_id, :reservation_date, :reservation_time, :number_of_people)
    end
end
