class DirectorsController < ApplicationController 
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    @the_director = Director.find_by(id: params[:id]) # Use `find_by` to return nil if not found

    if @the_director.nil?
      # Handle the case where the director is not found
      redirect_to directors_path, alert: "Director not found"
    else
      render({ template: "director_templates/details" })
    end
  end
end
