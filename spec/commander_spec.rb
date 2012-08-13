require 'spec_helper'

describe Coldshoulder::Commander do

  it 'takes in a command' do
    Coldshoulder::Commander.new("generate").command.should == "generate"
  end
  
end
