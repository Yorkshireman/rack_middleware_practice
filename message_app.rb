class MessageApp
  def call(env)
    [200, {}, [env['MESSAGE']]]
  end
end