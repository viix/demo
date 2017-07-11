require "raven"

Raven.configure do |config|
  config.dsn = "http://9fae2e769d72477ea4b64ecb3b7415dc:7abf019fe78c4f56952eb32488851b00@sentry.measurechina.cn:8080/2"
end

raise_error

def raise_error
  e = Exception.new(message: "some error")
  Raven.capture(e)
end
