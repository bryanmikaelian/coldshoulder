module Coldshoulder

  class Director

    attr_accessor :args

    def initialize(args)
      self.args = args
    end

    def direct!
      run!
    end

    def opts
      opts = OptionParser.new do |opts|
        opts.banner = "Usage: coldshoulder [options] [template name]"
        opts.separator ""
        opts.separator "Commands: "

        opts.on_tail("-v", "--version", "Display the version") do
          Coldshoulder::Display.message "Current version: #{Coldshoulder::VERSION}"
        end

        opts.on_tail("-h", "--help", "Displays this message") do
          puts opts
        end
      end
    end

    def parse!
      opts.parse!(arguements)
    end

    protected

    def run! 
      command = args.shift
      unless command
        command = "--help"
      end
      begin
        opts.parse!([command])
      rescue OptionParser::ParseError => e
        puts "Error: #{e.message}"
      end
    end

  end

end
