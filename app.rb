require 'sinatra'
require 'redcarpet'


helpers do
  def full_name_of_file (post)
    "./updates/" + post.to_s + ".md"
  end

  def render_to_html (file)
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                        :autolink => true,
                                        :space_after_headers => true,
                                        :quote => true)
    @markdown.render(file)
  end

  def directory_contents
    ls = []
    Dir.glob('updates/*.md') do |filename|
      ls << filename.gsub('.md', '')
    end

    ls
  end

  def post_title(filename)
    filename.gsub('_', ' ').
      gsub('updates/', '').
      capitalize
  end
end


get '/' do
  redirect to('/updates')
end

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
