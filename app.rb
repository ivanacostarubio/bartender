require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'sass'
require 'mongoid'

Mongoid.load!("config/mongoid.yml")

Slim::Engine.set_default_options :sections => false

class App < Sinatra::Base

  set :public, File.join(File.dirname(__FILE__), 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end


  get('/') do 
    slim :index
  end

  get('/styles') do 
    slim :styles
  end

end
