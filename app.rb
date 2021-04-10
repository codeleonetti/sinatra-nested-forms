require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      
      erb :root
    end
    
    get '/new' do
      erb :new
    end
    post '/pirates' do
      
      @new_pirates = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        new_ship = Ship.new(ship)

        Ship.all
      end
      @ships = Ship.all
      erb :pirates
    end
  end
end
