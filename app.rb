require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'sass'

Slim::Engine.set_default_options :sections => true

class App < Sinatra::Base

  set :public, File.join(File.dirname(__FILE__), 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end


  get('/'){ slim :layout}

end
