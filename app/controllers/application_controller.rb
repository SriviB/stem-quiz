require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
    
  post '/' do
    array_points = params.values
    total =0
    
    array_points.each do |points|
      total += points.to_i
    end
    
    result = calc_field(total)
    if result == "science"
      return erb :science
    elsif result == "technology"
      return erb :technology
    elsif result == "engineering"
      return erb :engineering
    elsif result == "math"
      return erb :math
  end
end
end