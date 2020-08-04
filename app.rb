require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "#{Sysrandom.hex(64)}"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @item = session[:item] = params[:item]
        erb :checkout
    end
end