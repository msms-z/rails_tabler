class VerifyCodeController < ApplicationController

  skip_before_action :authenticate_user!

  def create

    respond_to do |format|
      format.json {
        render json: { code: 0 }, status: :created
      }
    end

  end
end
