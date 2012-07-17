require 'spec_helper'

describe Coldshoulder::Commands do
  it 'can register a command' do
    puts Coldshoulder::Commands.register(:test)
    Coldshoulder::Commands.commands.key?(:test).should == true
  end
end
