require 'spec_helper'

describe "post_title" do
  include Helpers
  
  it "should remove underscores and capitalize" do
    @filename = "hello_world!_the_second"
    expect(post_title @filename).to eq("Hello world! the second")
  end

  it "should remove system filestructure" do
    @filename = "updates/Hello"
    expect(post_title @filename).to eq("Hello")
  end
end