module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(*args)
      self.command = args.shift
      self.language = args.shift
      process
    end


    def process
      if self.command == "generate"
        puts "Generating gitignore file..."
      end
    end
  end
  
end
