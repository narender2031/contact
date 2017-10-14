class ContactphonesController < ApplicationController
  before_action :set_contactphone, only: [:show, :edit, :update, :destroy]

  # GET /contactphones
  # GET /contactphones.json
  def index
    @contactphones = Contactphone.all
  end

  # GET /contactphones/1
  # GET /contactphones/1.json
  def show
  end

  # GET /contactphones/new
  def new
    @contactphone = Contactphone.new
  end

  # GET /contactphones/1/edit
  def edit
  end

  # POST /contactphones
  # POST /contactphones.json
  def create
    @contactphone = Contactphone.new(contactphone_params)

    respond_to do |format|
      if @contactphone.save
        format.html { redirect_to @contactphone, notice: 'Contactphone was successfully created.' }
        format.json { render :show, status: :created, location: @contactphone }
      else
        format.html { render :new }
        format.json { render json: @contactphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactphones/1
  # PATCH/PUT /contactphones/1.json
  def update
    respond_to do |format|
      if @contactphone.update(contactphone_params)
        format.html { redirect_to @contactphone, notice: 'Contactphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactphone }
      else
        format.html { render :edit }
        format.json { render json: @contactphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactphones/1
  # DELETE /contactphones/1.json
  def destroy
    @contactphone.destroy
    respond_to do |format|
      format.html { redirect_to contactphones_url, notice: 'Contactphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactphone
      @contactphone = Contactphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactphone_params
      params.require(:contactphone).permit(:name, :address, :city, :phone, :email)
    end
end
