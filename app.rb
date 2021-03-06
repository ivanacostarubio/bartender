require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'sass'



class App < Sinatra::Base

  set :public, File.join(File.dirname(__FILE__), 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')

  helpers do
    def partial(page, options={})
      slim page, options.merge!(:layout => false)
    end
  end


  get('/') do 
    slim :index
  end

  get('/styles') do 
    slim :styles
  end
  
  get('/grid') do 
    slim :grid
  end
  

end
