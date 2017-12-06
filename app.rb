require 'sinatra'

get '/' do
    erb :juego
end

post '/dado' do
  @resultado = "Posicion 5"
  erb :juego
end



