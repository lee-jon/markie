require 'spec_helper'

describe "#full_name_of_file" do
  it "should take a string and append the right result" do
    @params = "helloworld"
    expect(full_name_of_file @params).to eq("./updates/helloworld.md")
  end
end

describe "#render_to_html" do
  it "should rendeder markdown as html" do
    @post = "# Hello"
    expect(render_to_html @post).to match("<h1>Hello</h1>")
  end
end
