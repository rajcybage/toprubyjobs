class JoblistsController < ApplicationController
  before_action :set_joblist, only: [:show, :edit, :update, :destroy]

  # GET /joblists
  # GET /joblists.json
  def index
    @joblists = Joblist.all
  end

  # GET /joblists/1
  # GET /joblists/1.json
  def show
  end

  # GET /joblists/new
  def new
    @joblist = Joblist.new
    @address = @joblist.build_address
  end

  # GET /joblists/1/edit
  def edit
  end

  # POST /joblists
  # POST /joblists.json
  def create
    @joblist = Joblist.new(joblist_params)

    respond_to do |format|
      if @joblist.save
        format.html { redirect_to joblists_url, notice: 'Joblist was successfully created.' }
        format.json { render :show, status: :created, location: @joblist }
      else
        format.html { render :new }
        format.json { render json: @joblist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joblists/1
  # PATCH/PUT /joblists/1.json
  def update
    respond_to do |format|
      if @joblist.update(joblist_params)
        format.html { redirect_to @joblist, notice: 'Joblist was successfully updated.' }
        format.json { render :show, status: :ok, location: @joblist }
      else
        format.html { render :edit }
        format.json { render json: @joblist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joblists/1
  # DELETE /joblists/1.json
  def destroy
    @joblist.destroy
    respond_to do |format|
      format.html { redirect_to joblists_url, notice: 'Joblist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joblist
      @joblist = Joblist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joblist_params
      params.require(:joblist).permit(:short_description, :long_description, :job_link, :recruiter_name, :title, :number_of_position, :type, :location)
    end
end
