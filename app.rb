require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

class App < Sinatra::Base

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end

  get '/styles.css' do 
    content_type 'text/css', :charset => 'utf-8'
    sass :styles
  end

  get '/' do
    haml :layout
  end

end
