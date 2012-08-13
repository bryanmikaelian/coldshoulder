module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(*args)
      self.command = args[0]
      self.language = args[1]
      generate!
    end

    def generate!
      process
    end

    protected

    def process
      puts self.command.class
      if self.command === "generate"
        puts 'Calling build in Coldshoulder::Generator'
        Coldshoulder::Generator.new.build(self.language)
      end
    end
  end
  
end
