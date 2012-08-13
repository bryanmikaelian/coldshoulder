module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(arg_hash)
      self.command = arg_hash[:command]
      self.language = arg_hash[:language]
    end

    def generate!
      Coldshoulder::Generator.new.build(self.language)
    end

  end
  
end
