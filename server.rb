require "fast_mcp"
require "mli"

require_relative "tools/vanishing_box_tool"

env = {
  "MLI_BASE_URL" => "https://app.jonallured.com/",
  "MLI_CLIENT_TOKEN" => File.read("/Users/jon/code/jontext/mli_client_token.txt").chomp
}

config = Mli::Config.new(env, [Faraday.default_adapter])
Mli.reset(config)

server = FastMcp::Server.new(name: "jontext", version: "0.0.1")
server.register_tools(VanishingBoxTool)
server.start
