module Coldshoulder

  class Generator

    def request_url(url)
      Curl::Easy.perform(url)
    end


    def build(language)
      puts 'Generating gitignore file...'
      r = request_url("https://raw.github.com/github/gitignore/master/#{language}.gitignore")
      if r.response_code == 200 
        File.open('.gitignore', 'w') do |f|
          f.write("#\n# Generated using coldshoulder v#{Coldshoulder::VERSION} - github.com/bryanmikaelian/coldshoulder\n#\n\n#{r.body_str}")
        end
        puts "Ignore file generated for language #{language}"
      else 
        puts "The gitignore file could not be generated. Language #{language} not found"
      end
    end

  end

end
