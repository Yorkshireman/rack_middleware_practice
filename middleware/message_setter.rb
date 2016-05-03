class MessageSetter
  def initialize(app)
    puts "==========MessageSetter initialized"
    @app = app
  end

  def call(env)
    puts "==========MessageSetter called"
    env['MESSAGE'] = env['QUERY_STRING']
    @app.call(env)
  end
end