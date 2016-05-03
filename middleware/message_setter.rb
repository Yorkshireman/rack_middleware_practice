class MessageSetter
  def initialize(app)
    puts "==========MessageSetter initialized"
    @app = app
  end

  def call(env)
    puts "==========MessageSetter called"
    @app.call(env)
  end

  private

  def printenv(env)
    puts "=========ENV WITHIN MESSAGE_SETTER CALL METHOD=============="
    puts "#{env}"
    puts "======================ENV END==============================="
  end
end