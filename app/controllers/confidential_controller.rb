class ConfidentialController < ApplicationController
  def secret
    render json: { message: "#{current_user.email}: I am not a fan of Hotwire!" }
  end
end
