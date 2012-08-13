module Coldshoulder

  class Commander 

    attr_accessor :command

    def initialize(*args)
      self.command = args.shift
    end
  end
  
end
