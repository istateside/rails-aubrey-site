class AddProjectsToPages < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :projects, :page
  end
end
