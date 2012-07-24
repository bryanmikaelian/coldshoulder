module Coldshoulder

  class Generator

    def request_url(url)
      Curl::Easy.perform(url)
    end

  end

end
