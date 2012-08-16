require 'spec_helper'

describe Coldshoulder::Director do
  it 'takes in the ARGV values' do
    arguments = ["-v", "generate"]
    Coldshoulder::Director.new(arguments).args.should == arguments
  end
end
