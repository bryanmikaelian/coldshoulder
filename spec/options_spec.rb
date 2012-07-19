require 'spec_helper'

describe Coldshoulder::Options do

  before :each do
    @o = Coldshoulder::Options.new
  end

  it 'has a way to get all options' do
    @o.options.should eq(@o.options)
  end

end
