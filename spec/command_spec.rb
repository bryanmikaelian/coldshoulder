require 'spec_helper'

describe Coldshoulder::Commands do

  before :each do
    @c = Coldshoulder::Commands.new
  end

  it 'has options' do
    @c.options.class.should == Hash
  end

  it 'has a way to register a command' do
    @c.register(:ruby)
    @c.has_command?(:ruby).should be_true
  end

  it 'can determine if a command exists' do
    @c.register(:ruby)
    @c.has_command?(:ruby).should == true
    @c.has_command?(:python).should == false
  end

  it 'can get all the commands' do
    @c.all.should == @c.options.keys
  end

end
