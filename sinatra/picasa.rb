# the following lines make Figaro work with Sinatra, so you can keep
# secrets in application.yml.

require 'rubygems'
require 'bundler'
Bundler.require

module Figaro
  class Application
    def path
      @path ||= File.join(Resty.settings.root, "config", "application.yml")
    end

    def environment
      Resty.settings.environment
    end
  end
end

# end Figaro hacks

class Picasa < Sinatra::Base

  configure do
    Figaro.load
  end

  # the main method that returns JSON to the Brightscript front end
  # needs to return a JSON array where each element looks like:
  # { "url": "https://...", "title": "image title", "width": 800, "height": 600 }

end
