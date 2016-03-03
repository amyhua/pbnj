require_relative "spec_helper"
require_relative "../pbnj.rb"

def app
  Pbnj
end

describe Pbnj do
  it "responds with a welcome message" do
    # get '/'

    # last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
