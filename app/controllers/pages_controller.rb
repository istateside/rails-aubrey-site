class PagesController < ApplicationController
  def main
  end
  
  def about
  end
  
  def work
    render plain: params[:permalink].inspect
  end
end
