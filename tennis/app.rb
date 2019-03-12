require 'sinatra'
require './lib/tennis.rb'

get '/' do
    @@tennis = Tennis.new
    @puntaje = @@tennis.mostrar_puntaje
    erb :tennis
end

get '/puntoA' do
    @@tennis.anotar "jugador1"
    @puntaje = @@tennis.mostrar_puntaje
    erb :tennis
end



post '/analisis' do
    @valor1 = params[:n1]
    @valor2 = params[:n2]
    @total =  @valor1.to_i + @valor2.to_i
    erb :resultado
end
