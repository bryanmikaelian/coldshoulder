require 'spec_helper'

describe Coldshoulder::Generator do

  it 'has a way to get a URL' do
    Coldshoulder::Generator.new.request_url('http://www.google.com').response_code.should == 200
  end

  it 'generates a gitignore file' do
    file = mock('file')
    File.should_receive(:open).with(".gitignore", "w").and_yield(file)
    file.should_receive(:write)
    Coldshoulder::Generator.new.build('Ruby')
  end

  it 'does not generate a gitignore file when a bad language is provided' do
    file = mock('file')
    File.should_not_receive(:open)
    Coldshoulder::Generator.new.build('RubySharp')
  end

end
