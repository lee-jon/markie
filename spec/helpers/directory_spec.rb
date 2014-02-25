require 'spec_helper'

describe "post_title" do
  it "should remove underscores and capitalize" do
    @filename = "hello_world!_the_second"
    expect(post_title @filename).to eq("Hello world! the second")
  end

  it "should remove system filestructure" do
    @filename = "updates/Hello"
    expect(post_title @filename).to eq("Hello")
  end
end

describe directory_contents do
  it "should return an array of contents" do
    @dir = directory_contents
    expect(@dir.class).to eq(Array)
    expect(@dir).not_to be_empty
  end

  it "should find items in the updates directory" do
    @dir = directory_contents
    expect(@dir[0]).to match("updates/")
  end
end
