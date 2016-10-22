class ProductLocationsController < ApplicationController
  # GET /product_locations
  # GET /product_locations.json
  def index
    @product_locations = ProductLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_locations }
    end
  end

  # GET /product_locations/1
  # GET /product_locations/1.json
  def show
    @product_location = ProductLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_location }
    end
  end

  # GET /product_locations/new
  # GET /product_locations/new.json
  def new
    @product_location = ProductLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_location }
    end
  end

  # GET /product_locations/1/edit
  def edit
    @product_location = ProductLocation.find(params[:id])
  end

  # POST /product_locations
  # POST /product_locations.json
  def create
    @product_location = ProductLocation.new(params[:product_location])

    respond_to do |format|
      if @product_location.save
        format.html { redirect_to @product_location, notice: 'Product location was successfully created.' }
        format.json { render json: @product_location, status: :created, location: @product_location }
      else
        format.html { render action: "new" }
        format.json { render json: @product_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_locations/1
  # PUT /product_locations/1.json
  def update
    @product_location = ProductLocation.find(params[:id])

    respond_to do |format|
      if @product_location.update_attributes(params[:product_location])
        format.html { redirect_to @product_location, notice: 'Product location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_locations/1
  # DELETE /product_locations/1.json
  def destroy
    @product_location = ProductLocation.find(params[:id])
    @product_location.destroy

    respond_to do |format|
      format.html { redirect_to product_locations_url }
      format.json { head :no_content }
    end
  end
end
