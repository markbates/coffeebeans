class DrinksController < ApplicationController
  respond_to :js, :html
  
  def index
    render(:action => 'index', :layout => false)
  end
  
end