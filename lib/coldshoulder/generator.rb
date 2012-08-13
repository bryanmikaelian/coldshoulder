module Coldshoulder

  class Generator

    def request_url(url)
      Curl::Easy.perform(url)
    end


    def build(language)
      r = request_url("https://raw.github.com/github/gitignore/master/#{language}.gitignore")
      if r.response_code == 200 
        File.open('.gitignore', 'w') do |f|
          f.write("#\n# Generating using coldshoulder - github.com/bryanmikaelian/coldshoulder\n#\n\n#{r.body_str}")
        end
        puts "Ignore file generated for language #{language}"
      else 
        puts "The gitignore file could not be generated. Ignore file for the language #{language} not found"
      end
    end

  end

end
