class PagesController < ApplicationController
  def main
  end
  
  def about
  end
  
  def comics
  end

  def illustration
  end

  def other
  end

  private
  def other_projects
    [
      {
        name: 'Greenpointers',
        slides: [
          {} 
        ]
      },
      {
        name: 'What Type of Girl?',

      }
    ]
  end
end
