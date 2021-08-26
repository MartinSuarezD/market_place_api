class Api::V1::UsersController < ApplicationController
  def show
    render json: User.find_by(params[:id])
  end  
end
