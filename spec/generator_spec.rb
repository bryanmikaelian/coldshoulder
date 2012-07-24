require 'spec_helper'

describe Coldshoulder::Generator do

  it 'has a way to get a URL' do
    Coldshoulder::Generator.new.request_url('http://www.google.com').response_code.should == 200
  end

  it 'sets the target language' do
    c = Coldshoulder::Generator.new('Ruby')
    c.target_language.should == 'Ruby'
  end

  it 'generates a gitignore file' do
    Coldshoulder::Generator.new('Ruby').should respond_to(:generate)
  end

end
