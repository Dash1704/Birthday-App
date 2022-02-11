require 'sinatra/base'
require 'sinatra/reloader'

class Birthday < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
      erb :index
    end

    post '/message' do
      erb :message
    end

    run! if app_file == $0
end