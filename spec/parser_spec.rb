require 'spec_helper'

describe Coldshoulder::Parser do

  it 'has a way to parse commands' do
    Coldshoulder::Parser.should respond_to(:parse)
  end

end
