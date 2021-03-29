class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  before_action :get_catagory
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
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = @catagory.items.find(params[:id])
    end

    def get_catagory
      @catagory = Catagory.find(params[:catagory_id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :dis, :weight)
    end
end
