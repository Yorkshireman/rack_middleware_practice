require 'rack'
class MessageApp
  def call(env)
    # [200, {}, [env['MESSAGE']]]
    Rack::Response.new([env['MESSAGE']], 200, {}) #or could omit the second two args?
  end
end