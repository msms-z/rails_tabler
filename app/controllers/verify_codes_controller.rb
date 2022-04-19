class VerifyCodesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: %i[ create ]

  before_action :set_verify_code, only: %i[ show edit update destroy ]

  # GET /verify_codes or /verify_codes.json
  def index
    @verify_codes = VerifyCode.all
  end

  # GET /verify_codes/1 or /verify_codes/1.json
  def show
  end

  # GET /verify_codes/new
  def new
    @verify_code = VerifyCode.new
  end

  # GET /verify_codes/1/edit
  def edit
  end

  # POST /verify_codes or /verify_codes.json
  def create
    @verify_code = VerifyCode.new(verify_code_params)

    respond_to do |format|
      if @verify_code.save
        format.html { redirect_to verify_code_url(@verify_code), notice: "Verify code was successfully created." }
        format.json { render json: nil, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @verify_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verify_codes/1 or /verify_codes/1.json
  def update
    respond_to do |format|
      if @verify_code.update(verify_code_params)
        format.html { redirect_to verify_code_url(@verify_code), notice: "Verify code was successfully updated." }
        format.json { render :show, status: :ok, location: @verify_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @verify_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verify_codes/1 or /verify_codes/1.json
  def destroy
    @verify_code.destroy

    respond_to do |format|
      format.html { redirect_to verify_codes_url, notice: "Verify code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verify_code
      @verify_code = VerifyCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def verify_code_params
      params.require(:verify_code).permit(:mobile)
    end
end
