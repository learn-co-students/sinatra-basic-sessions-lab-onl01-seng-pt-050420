require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "coding_rules"
    end

    get '/' do 
        session.clear
        erb :index
        
    end

    post '/checkout' do
        @session = session
        @session["item"] = params[:item]
     
        erb :display
    end

end