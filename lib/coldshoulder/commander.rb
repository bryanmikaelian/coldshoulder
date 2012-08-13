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
        if language
          puts "Target language: #{self.language}"
          Coldshoulder::Generator.new.build(self.language)
        end
      end
    end
  end
  
end
