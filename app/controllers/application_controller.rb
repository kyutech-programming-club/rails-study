# coding: utf-8
class ApplicationController < ActionController::Base
  include SessionsHelper

  protect_from_forgery with: :exception

  add_flash_types :success, :info, :warning, :danger

   def correct_user
    user = User.find(params[:id])
    return if user == current_user

    redirect_to root_path, danger: "プロ研追放!今までありがとう!"
  end
end
