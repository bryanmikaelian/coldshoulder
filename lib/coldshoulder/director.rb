module Coldshoulder

  class Director

    attr_accessor :args

    def initialize(args)
      self.args = args
    end

    def direct!
      run!
    end


    def run! 

    end

  end

end
