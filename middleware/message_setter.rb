class MessageSetter
  def initialize(app)
    puts "==========MessageSetter initialized"
    @app = app
  end

  def call(env)
    puts "==========MessageSetter called"
    if query_string_empty?(env)
      env['MESSAGE'] = 'Hello, World!'
    else
      env['MESSAGE'] = env['QUERY_STRING']
    end
    @app.call(env)
  end

  private

  def query_string_empty?(env)
    env['QUERY_STRING'] == ""
  end
end