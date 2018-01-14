require './environment'

module FormsLab
  class App < Sinatra::Base
  get '/' do
    erb :root
  end

  get '/new' do
    erb :'pirates/new'
  end
  #
  post '/pirates' do
    @pirates = Pirate.new(params[:name],params[:weight],params[:height])
    erb :show
  end
    # code other routes/actions here

  end
end
