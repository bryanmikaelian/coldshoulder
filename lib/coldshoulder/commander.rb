module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(*args)
      puts 'Init'
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
        puts 'Calling build in Coldshoulder::Generator'
        Coldshoulder::Generator.new.build(self.language)
      end
    end
  end
  
end
