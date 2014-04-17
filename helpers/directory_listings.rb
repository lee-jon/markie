# Various methods for listing and manipulating the updates directory

module Helpers
  def directory_contents
    ls = []
    Dir.glob('updates/*.md') do |filename|
      ls << filename.gsub('.md', '')
    end

    ls
  end
end