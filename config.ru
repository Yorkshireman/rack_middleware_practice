class MessageServer
  def call(env)
    [200, {}, ['Hello, World!']]
  end
end

map '/' do
  run MessageServer.new
end
