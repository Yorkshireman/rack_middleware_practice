class MessageSetter
  def initialize(app)
    @app = app
  end

  def call(env)
    if query_string_empty?(env)
      env['MESSAGE'] = 'Hello, World!'
    else
      env['MESSAGE'] = env['QUERY_STRING']
    end

    begin
      @app.call(env)
    rescue
      puts "CAUGHT"
      Rack::Response.new([env['MESSAGE'], ' (caught an exception along the way!)'], 200, {})
    end
  end

  private

  def query_string_empty?(env)
    env['QUERY_STRING'] == ""
  end
end