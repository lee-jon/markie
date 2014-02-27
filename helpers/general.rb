module Helpers
  def full_name_of_file (post)
    "./updates/" + post.to_s + ".md"
  end

  def render_to_html (file)
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true,
                                        :space_after_headers => true, :quote => true)
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