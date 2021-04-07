class ItemsController < ApplicationController
  before_action :get_catagory
  before_action :get_pack
  before_action :set_item, only: [:show, :update, :destroy]
  # GET /items
  def index
    @items = @catagory.items

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = @catagory.items.build(item_params)

    if @item.save
      render json: @catagory.items
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @catagory.items
      # render json: @pack.to_json(include: [:catagories => {include: :items}] )
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    if @item.destroy
      render json: @catagory.items
      # render json: @pack.to_json(include: [:catagories => {include: :items}] )
    else 
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_catagory
      @catagory = Catagory.find(params[:catagory_id])
    end
    
    def get_pack
      @pack = Pack.find(params[:pack_id])
    end

    def set_item
      @item = @catagory.items.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :des, :weight)
    end
end
