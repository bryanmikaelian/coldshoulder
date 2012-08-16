require 'spec_helper'

describe Coldshoulder::Director do
  before :each do
    @arguements = ["-v", "generate"]
  end

  it 'takes in the ARGV values' do
    Coldshoulder::Director.new(@arguements).args.should == @arguements
  end

  it 'can display the version' do
    Coldshoulder::Display.should_receive(:message).with("Current version: #{Coldshoulder::VERSION}")
    Coldshoulder::Director.new(["-v", "--version"]).direct!
  end

  it 'can display the help' do
    Coldshoulder::Display.should_receive(:message)
    Coldshoulder::Director.new(["-h", "--help"]).direct!
  end

end
