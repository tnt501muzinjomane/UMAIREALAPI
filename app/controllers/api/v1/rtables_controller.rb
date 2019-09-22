class Api::V1::RtablesController < ApplicationController
  before_action :set_rtable, only: [:show, :edit, :update, :destroy]


# GET /rtables
  # GET /rtables.json
  def index
   @rtable = Rtable.all
   render json: @rtable
  end

  # GET /rtables/1
  # GET /rtables/1.json
  def show
   render json: @rtable
  end


  # GET /rtables/new
  def new
    @rtable = Rtable.new
  end

  # GET /rtables/1/edit
  def edit
  end

  # POST /rtables
  # POST /rtables.json 
def create
    @rtable = Rtable.new(rtable_params)
   if @rtable.save
    render json: @rtable, status: :created, location:        api_v1_rtable_url(@rtable)
   else
    render json: @rtable.errors, status: :unprocessable_entity
   end
  end


  # PATCH/PUT /rtables/1
  # PATCH/PUT /rtables/1.json
def update
   if @rtable.update(rtable_params)
    render json: @rtable
   else
    render json: @rtable.errors, status: :unprocessable_entity
   end
  end

  # DELETE /rtables/1
  # DELETE /rtables/1.json
 def destroy
   @rtable.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rtable
      @rtable = Rtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rtable_params
      params.require(:rtable).permit(:name, :min_guest, :max_guest)
    end
end
