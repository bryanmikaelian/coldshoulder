module Coldshoulder
  class Commands

    @commands = {}

    def options
      @commands ||= Hash.new
    end

    def register(cmd)
      @commands ||= Hash.new
      @commands[cmd] = cmd
    end

    def has_command?(cmd)
      @commands.has_key?(cmd)
    end

    def all
      @commands ||= Hash.new
      @commands.keys
    end

  end
end
