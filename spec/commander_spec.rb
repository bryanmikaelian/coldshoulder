require 'spec_helper'

describe Coldshoulder::Commander do

  it 'takes in a command' do
    Coldshoulder::Commander.new("generate").command.should == "generate"
  end

  it 'takes in a language' do
    Coldshoulder::Commander.new("generate", "Ruby").language.should == "Ruby"
  end

  it 'drives the generation of a gitignore file' do
    file = mock('file')
    File.should_receive(:open).with(".gitignore", "w").and_yield(file)
    file.should_receive(:write)
    Coldshoulder::Commander.new("generate",'Ruby')
  end
  
end
