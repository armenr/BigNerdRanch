# Your very first Ruby application

require 'rack'

hello = lambda do |env|
  [200, { "Content-Type" => "text/plain" }, ["Hello, world!\n"]]
end

run hello

# curl --include localhost:9292 to check some things out

# .ru = convention for "rackup", nothing special per-se about that filetype
# nameing .ru permits auto-loading of the rack DSL
