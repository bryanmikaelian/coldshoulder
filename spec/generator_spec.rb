require 'spec_helper'

describe Coldshoulder::Generator do
  it 'has a way to get a URL' do
    Coldshoulder::Generator.new.request_url('http://www.google.com').response_code.should == 200
  end
end
