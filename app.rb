require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        @cart = params[:item]
        session[:item] = params[:item]
        erb :checkout
    end
end