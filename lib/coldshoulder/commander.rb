module Coldshoulder

  class Commander 

    attr_accessor :command, :language

    def initialize(arg_hash)
      self.language = arg_hash[:language]
      self.command = arg_hash[:command]
      if self.command == "generate"
        generate!
      else
        parse!([self.command])
      end
    end

    def parse!(commands) 
      options = {}
      if self.command == "generate"
        generate!
      else 
        begin
          opts = OptionParser.new do |opts|
            opts.banner = "Usage: coldshoulder [options] [template name]"
            opts.separator ""
            opts.separator "Commands: "

            opts.on_tail("-v", "--version", "Display the version") do
              puts "Current version: #{Coldshoulder::VERSION}"
            end

            opts.on_tail("-h", "--help", "Displays this message") do
              puts opts
            end
          end
          opts.parse!(commands)
        rescue OptionParser::ParseError => e
          puts "Error: #{e.message}"
        end
      end
    end


    protected

    def generate!
      Coldshoulder::Generator.new.build(self.language)
    end

  end
  
end
