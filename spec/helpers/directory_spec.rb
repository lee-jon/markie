require 'spec_helper'

describe "directory_contents" do
  include Helpers
  
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
