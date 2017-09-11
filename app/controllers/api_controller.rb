class ApiController < ApplicationController
  #before_action :authenticate_admin!
  acts_as_token_authentication_handler_for Admin, except: [:index, :show] 
end
