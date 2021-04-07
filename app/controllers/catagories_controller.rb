class CatagoriesController < ApplicationController

  before_action :get_pack
  before_action :set_catagory, only: [:show, :update, :destroy]
  
  # GET /catagories
  def index
    @catagories = @pack.catagories

    render json: @catagories
  end

  # GET /catagories/1
  def show
    render json: @catagory.to_json(include: :items)
  end

  # POST /catagories
  def create
    @catagory = @pack.catagories.build(catagory_params)

    if @catagory.save
      render json: @pack.to_json(include: [:catagories => {include: :items}] )
    else
      render json: @catagory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /catagories/1
  def update
    if @catagory.update(catagory_params)
      render json: @pack.to_json(include: [:catagories => {include: :items}] )
    else
      render json: @catagory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /catagories/1
  def destroy
    if @catagory.destroy
      render json: @pack.to_json(include: [:catagories => {include: :items}] )
    else
      render json: @catagory.errors, status: :unprocessable_entity
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
   
    def get_pack
      @pack = Pack.find(params[:pack_id])
    end

    def set_catagory
      @catagory = @pack.catagories.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def catagory_params
      params.require(:catagory).permit(:name)
    end
end
