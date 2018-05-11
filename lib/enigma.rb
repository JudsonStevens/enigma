class Enigma
  attr_reader :character_map
  def initialize
    @character_map = [*('a'..'z'), ' ', '.', ',']
  end

  def encrypt(message, code = rand(10000..99999).to_s, date)

  end

  def strip_and_make_message_array(message)
    message.strip.chars
  end

  def format_date_object(date)
    date.strftime('%m%d%y')
  end

  def character_rotator(message)
    message_array = strip_and_make_message_array(message)
    message_array.map_with_index do |character, index|
      until index == (message_array.length - 1)
        message_array.take(4).map do |element|
          
          @character_map.index(element)
        end
      end
    end
  end

  def find_the_rotated_index(character)
    generate_character_rotation


  def generate_character_rotation(code, date)
    [generate_a_rotation(code, date),
     generate_b_rotation(code, date),
     generate_c_rotation(code, date),
     generate_d_rotation(code, date)]
  end

  def generate_a_rotation(code, date)
    code[0..1].to_i + generate_offset_a(date).to_i
  end

  def generate_b_rotation(code, date)
    code[1..2].to_i + generate_offset_b(date).to_i
  end

  def generate_c_rotation(code, date)
    code[2..3].to_i + generate_offset_c(date).to_i
  end

  def generate_d_rotation(code, date)
    code[3..4].to_i + generate_offset_d(date).to_i
  end

  def generate_offset_a(date)
    (date.to_i ** 2).to_s[-4]
  end

  def generate_offset_b(date)
    (date.to_i ** 2).to_s[-3]
  end

  def generate_offset_c(date)
    (date.to_i ** 2).to_s[-2]
  end

  def generate_offset_d(date)
    (date.to_i ** 2).to_s[-1]
  end
end
