class MessageApp
  def call(env)
    raise
    [200, {}, [env['MESSAGE']]]
  end
end