require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sesions
        set :session_secret, "secret"
    end
    get '/' do
        erb :index
    end

    post '/checkout' do
        # "hello"
        session[:item] = params[:item]
        @session = session
       
        erb :show
    end
end