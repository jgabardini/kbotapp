require 'sinatra'
require './config'
require 'time'
require './lib/kbot'
enable :sessions

kbot= nil
@momento= 0
get '/' do 
    kbot= Kbot.new 
    session[:momento]= momento_del_dia
    puts "/ momento #{session[:momento]}"
    erb :index
end

post '/chat' do
    puts "/chat momento #{session[:momento]}"
    if params[:ingreso]
        kbot.ingresa params[:ingreso], session[:momento]
    end
    @mensajes=  kbot.mensajes
    
    erb :chat
end

def momento_del_dia
    puts "momento_del_dia momento #{session[:momento]}"
    case Time.now.hour
        when 5..13 then 0
        when 14..20 then 1
        else 2
    end
end

get '/fijarhora/:cuando' do |cuando|
    kbot= Kbot.new 
    session[:momento]= cuando.to_i
    puts "/fijarhora momento #{session[:momento]}"
    erb :index
end