class MyscaffoldtestsController < ApplicationController
  # GET /myscaffoldtests
  # GET /myscaffoldtests.json
  def index
    @myscaffoldtests = Myscaffoldtest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myscaffoldtests }
    end
  end

  # GET /myscaffoldtests/1
  # GET /myscaffoldtests/1.json
  def show
    @myscaffoldtest = Myscaffoldtest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myscaffoldtest }
    end
  end

  # GET /myscaffoldtests/new
  # GET /myscaffoldtests/new.json
  def new
    @myscaffoldtest = Myscaffoldtest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myscaffoldtest }
    end
  end

  # GET /myscaffoldtests/1/edit
  def edit
    @myscaffoldtest = Myscaffoldtest.find(params[:id])
  end

  # POST /myscaffoldtests
  # POST /myscaffoldtests.json
  def create
    @myscaffoldtest = Myscaffoldtest.new(params[:myscaffoldtest])

    respond_to do |format|
      if @myscaffoldtest.save
        format.html { redirect_to @myscaffoldtest, notice: 'Myscaffoldtest was successfully created.' }
        format.json { render json: @myscaffoldtest, status: :created, location: @myscaffoldtest }
      else
        format.html { render action: "new" }
        format.json { render json: @myscaffoldtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myscaffoldtests/1
  # PUT /myscaffoldtests/1.json
  def update
    @myscaffoldtest = Myscaffoldtest.find(params[:id])

    respond_to do |format|
      if @myscaffoldtest.update_attributes(params[:myscaffoldtest])
        format.html { redirect_to @myscaffoldtest, notice: 'Myscaffoldtest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myscaffoldtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myscaffoldtests/1
  # DELETE /myscaffoldtests/1.json
  def destroy
    @myscaffoldtest = Myscaffoldtest.find(params[:id])
    @myscaffoldtest.destroy

    respond_to do |format|
      format.html { redirect_to myscaffoldtests_url }
      format.json { head :no_content }
    end
  end
end
