class USersController < ApplicationController
  before_action :set_u_ser, only: [:show, :edit, :update, :destroy]

  # GET /u_sers
  # GET /u_sers.json
  def index
    @u_sers = USer.all
  end

  # GET /u_sers/1
  # GET /u_sers/1.json
  def show
  end

  # GET /u_sers/new
  def new
    @u_ser = USer.new
  end

  # GET /u_sers/1/edit
  def edit
  end

  # POST /u_sers
  # POST /u_sers.json
  def create
    @u_ser = USer.new(u_ser_params)

    respond_to do |format|
      if @u_ser.save
        format.html { redirect_to @u_ser, notice: 'U ser was successfully created.' }
        format.json { render :show, status: :created, location: @u_ser }
      else
        format.html { render :new }
        format.json { render json: @u_ser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u_sers/1
  # PATCH/PUT /u_sers/1.json
  def update
    respond_to do |format|
      if @u_ser.update(u_ser_params)
        format.html { redirect_to @u_ser, notice: 'U ser was successfully updated.' }
        format.json { render :show, status: :ok, location: @u_ser }
      else
        format.html { render :edit }
        format.json { render json: @u_ser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_sers/1
  # DELETE /u_sers/1.json
  def destroy
    @u_ser.destroy
    respond_to do |format|
      format.html { redirect_to u_sers_url, notice: 'U ser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_ser
      @u_ser = USer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_ser_params
      params.require(:u_ser).permit(:name, :password, :password_confirmation)
    end
end
