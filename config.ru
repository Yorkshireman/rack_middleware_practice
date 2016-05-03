require_relative './message_app'
require_relative './middleware/message_setter'

use MessageSetter
run MessageApp.new
