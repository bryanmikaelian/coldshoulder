module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(*args)
      self.command = args.shift
      self.language = args.shift
      generate!
    end

    def generate!
      process
    end

    protected

    def process
      if self.command == "generate"
        Coldshoulder::Generator.new.build(self.language)
      end
    end
  end
  
end
