# Method to render markdown file to html

module Helpers
  def render_to_html (file)
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true,
                                        :space_after_headers => true, :quote => true)
    @markdown.render(file)
  end
end