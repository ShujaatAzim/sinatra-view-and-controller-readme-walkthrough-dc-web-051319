require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Emily Wildling Davison", "Harriet Tubman", "Joan of Arc", "Malala Yousafzai", "Sojourner of Truth"]
    erb :friends
  end
end