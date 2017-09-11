class ProjectsController < ApplicationController
  def main
  end
  
  def about
  end
  
  def overlay
    @project = Project.find(params[:id])
    if @project
      render partial: 'overlay'
    else
      raise "No project found with ID #{params[:id]}"
    end      
  end
end
