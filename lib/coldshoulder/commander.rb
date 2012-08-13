module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(*args)
      self.command = args.shift
      self.language = args.shift
      generate!
    end

    def generate!
      Coldshoulder::Generator.new.build(self.language)
    end

  end
  
end
