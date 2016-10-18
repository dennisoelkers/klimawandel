require 'xmlrpc/client'

class Homegear
  def initialize(url)
    @server = XMLRPC::Client.new2(url)
    @server.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end

  def getIds
    result = listDevices
    result.map {|e| e["ID"]}.uniq
  end

  def getThermostats
    getPeerId(8)
  end

  def method_missing(name, *args, &block)
    status, result = @server.call2(name, *args)
    if (!status) then
      throw result
    end

    return result
  end

  def self.default
    return Homegear.new(Rails.configuration.homegear)
  end
end
