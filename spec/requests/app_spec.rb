require 'spec_helper'

shared_examples_for "a route" do
  subject { last_response }
  it { should be_ok }
end

describe "Home page" do
  before do
    get '/'
    follow_redirect!
  end

  it_should_behave_like "a route"
end

describe "Updates index" do
  before { get '/updates' }
  it_should_behave_like "a route"
end

describe "Updates post" do
  before { get '/updates/2014_02_25_test_update' }
  it_should_behave_like "a route"
end
