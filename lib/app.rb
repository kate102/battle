require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    p "test"
    erb :index
  end

  post "/names" do
    @player1name = params[:"Player One"]
    @player2name = params[:"Player Two"]
    erb :names
  end

  run! if app_file == $0

end
