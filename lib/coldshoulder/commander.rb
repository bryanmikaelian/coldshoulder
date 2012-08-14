module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(arg_hash)
      self.command = arg_hash[:command]
      self.language = arg_hash[:language]
    end

    def generate!
      case self.command
      when  "generate"
        Coldshoulder::Generator.new.build(self.language)
      when "-v"
        puts "Current version: #{Coldshoulder::VERSION}"
      end
    end

  end
  
end
