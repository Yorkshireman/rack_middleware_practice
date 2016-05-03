# My Rack application - a Rack application is an object (not a class) that responds to to `call`.
# It takes exactly one argument, the 'environment' and returns an Array of exactly three values:
# The 'status', the 'headers', and the 'body'.

class MessageApp
  def call(env)
    puts "==========MessageApp called"
    [200, {}, [env['MESSAGE']]]
  end
end