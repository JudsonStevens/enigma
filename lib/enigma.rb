class Enigma
  attr_reader :character_map
  def initialize
    @character_map = [*('a'..'z'), ' ', '.', ',']
  end

  def encrypt(message, code, date)
    
  end

  def strip_and_make_message_array(message)
    message.strip.chars
  end

end