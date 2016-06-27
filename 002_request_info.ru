require 'rack'

request_info = lambda do |env|
  request = Rack::Request.new(env)
  method = request.request_method
  path = request.path

  body = "Method: #{method}\nPath: #{path}\n"
  [200, { "Content-Type" => "text/plain" }, [body]]
end

run request_info
