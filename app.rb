require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do

        @session = session
        erb :checkout
    end
end