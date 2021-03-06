require 'sinatra'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1name] = params[:"Player One"]
    session[:player2name] = params[:"Player Two"]
    redirect '/play'
  end

  get '/play' do
    @player1name = session[:player1name]
    @player2name = session[:player2name]
    erb :names
  end

  run! if app_file == $0

end
