# Your very first Ruby application

require 'rack'

hello = lambda do |env|
  [200, { "Content-Type" => "text/plain" }, ["Hello, world!\n"]]
end

run hello
