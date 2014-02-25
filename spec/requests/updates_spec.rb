require 'spec_helper'

describe 'Updates post' do

  it "does not respond to an incorrect file" do
    get '/updates/incorrect'
    expect(last_response.body).to match('There is no update')
  end

  it "renders the correct file" do
    get '/updates/helloworld'
    expect(last_response.body).to match('Hello World')
  end
end
