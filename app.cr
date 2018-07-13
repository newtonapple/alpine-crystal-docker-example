require "kemal"

get "/" do
  {"content" => "hello world"}.to_json
end

Kemal.run