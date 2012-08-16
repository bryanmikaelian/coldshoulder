require 'spec_helper'

describe Coldshoulder::Director do
  before :each do
    @arguements = ["-v", "generate"]
  end

  it 'takes in the ARGV values' do
    Coldshoulder::Director.new(@arguements).args.should == @arguements
  end

end
