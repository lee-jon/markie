# General helpers

module Helpers
  def full_name_of_file (post)
    "./updates/" + post.to_s + ".md"
  end

  def post_title(filename)
    filename.gsub('_', ' ').
      gsub('updates/', '').
      capitalize
  end
end