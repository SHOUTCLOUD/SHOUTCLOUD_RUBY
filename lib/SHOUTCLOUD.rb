require "SHOUTCLOUD/VERSION"
require "json"
require "httparty"

module SHOUTCLOUD
  class WHOOPS < StandardError; end

  def self.UPCASE(input)
    response = HTTParty.post 'http://API.SHOUTCLOUD.IO/V1/SHOUT',
                             body: JSON.generate({ "input" => input }),
                             headers: { "Content-Type" => "application/json" }
    response_hash = JSON.parse(response.body)

    raise WHOOPS if response.code != 200

    response_hash["OUTPUT"]
  end
end

class String
  @@STACK_COUNTER = 0

  alias :UPCASE :upcase
  def upcase
    @@STACK_COUNTER += 1
    ret = if @@STACK_COUNTER == 1
      SHOUTCLOUD.UPCASE(self)
    else
      self.UPCASE
    end
    @@STACK_COUNTER -= 1
    ret
  end

  def upcase!
    self.replace(SHOUTCLOUD.UPCASE(self))
  end
end
