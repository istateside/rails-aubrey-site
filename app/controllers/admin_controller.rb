class AdminController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def home
    render html: '', layout: true
  end
end
