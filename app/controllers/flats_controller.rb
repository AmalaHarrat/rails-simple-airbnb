class FlatsController < ApplicationController
  def index
    # Display all flats
    @flats = Flat.all
  end

  def show
    # display a flat depending on ID
    @flat = Flat.find(params[:id])
  end

  def new
    # create a flat w/ view
    @flat = Flat.new
  end

  def create
    # create a flat no view
    @flat = Flat.new(flats_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # modify a flat w/ view
  end

  def update
    # modify a flat no view
  end

  def destroy
    # delete a flat
  end

  private
  def flats_params
    params.require(:flat).permit(:name, :adress, :description, :price_per_night)

  end
end
