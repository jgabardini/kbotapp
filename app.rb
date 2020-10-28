require 'sinatra'
require './config'
require 'time'
require './lib/kbot'

kbot= nil
momento= 0
get '/:cuando?' do |cuando|
    kbot= Kbot.new 
    if cuando
        momento= cuando.to_i
    else
        momento= case Time.now.hour
                when 5..13 then 0
                when 14..20 then 1
                else 2
            end
    end
    erb :index
end

post '/chat' do

    if params[:ingreso]
        kbot.ingresa params[:ingreso], momento
    end
    @mensajes=  kbot.mensajes

    erb :chat
end