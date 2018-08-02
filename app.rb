require_relative 'config/environment'
require_relative 'models/model.rb'

class App < Sinatra::Base

  get '/' do
    erb :spooky_form
  end
  
  post '/' do
    @my_result = get_spooked(params[:question1])
    
    erb :results
  end

  # Add your post route and action below

end
