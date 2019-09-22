class Api::V1::ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  # GET /shifts
  # GET /shifts.json
  
  def index
   @shift = Shift.all
   render json: @shift
  end

  # GET /shift/1
  # GET /shift/1.json
  def show
   render json: @shift
  end


  # GET /shift/new
  def new
    @shift = Shift.new
  end

  # GET /shift/1/edit
  def edit
  end

  # POST /shift
  # POST /shift.json 
def create
    @shift = Shift.new(shift_params)
   if @shift.save
    render json: @shift, status: :created, location:        api_v1_shift_url(@shift)
   else
    render json: @shift.errors, status: :unprocessable_entity
   end
  end


  # PATCH/PUT /shift/1
  # PATCH/PUT /shift/1.json
def update
   if @shift.update(shift_params)
    render json: @shift
   else
    render json: @shift.errors, status: :unprocessable_entity
   end
  end

  # DELETE /shift/1
  # DELETE /shift/1.json
 def destroy
   @shift.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @shift = Shift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_params
      params.require(:shift).permit(:start_time, :end_time, :restaurant_id)
    end
end
