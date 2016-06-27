require 'rack'

request_info = lambda do |env|
  request = Rack::Request.new(env)
  method = request.request_method
  path = request.path
  request_body = request.body.read

  #body = "Method: #{method}\nPath: #{path}\n"
  body = "Method: #{method}\nPath: #{path}\nRequest Body: #{request_body}\n"
  [200, { "Content-Type" => "text/plain" }, [body]]
end

run request_info
