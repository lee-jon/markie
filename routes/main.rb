class TechUpdates < Sinatra::Application
  get '/' do
    redirect to('/updates')
  end
end