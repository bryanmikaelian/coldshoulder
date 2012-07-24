module Coldshoulder

  class Generator

    attr_reader :target_language

    def initialize(*args)
      @target_language = args.shift
    end

    def request_url(url)
      Curl::Easy.perform(url)
    end

    def generate
      build_ignore_file
    end

    protected 

    def build_ignore_file
      puts 'Generating gitignore file...'
      r = request_url("https://raw.github.com/github/gitignore/master/#{@target_language}.gitignore")
      if r.response_code == 200
        File.open('.gitignore', 'w') do |f|
          f.write("#\n# Generating using coldshoulder - github.com/bryanmikaelian/coldshoulder\n#\n\n#{r.body_str}")
        end
        puts "Ignore file generated for language #{@target_language}"
      else 
        puts "The gitignore file could not be generated. Ignore file for the language #{@target_language} not found"
      end
    end

  end

end
