class ConfidentialController < ApplicationController
  def secret
    render json: { message: "I am not a fan of Hotwire!" }
  end
end
