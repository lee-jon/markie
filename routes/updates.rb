class TechUpdates < Sinatra::Application

  get '/updates' do
    erb :update_index
  end

  get '/updates/:post' do
    filename = full_name_of_file(params[:post])
    if File.exists? filename
      body = File.read(filename)
      erb :updates, :locals => { :post => render_to_html(body) }
    else
      "There is no update that matches that post name"
    end
  end

end