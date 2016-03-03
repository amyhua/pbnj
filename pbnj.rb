class Pbnj < Sinatra::Base
  set :public_folder => 'public', :static => true

  get '/' do
    erb :under_construction
  end

  get '/demo' do
    erb :demo, :layout => :layout_app
  end
end
