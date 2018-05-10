require 'time'
require_relative '../lib/enigma.rb'

RSpec.describe Enigma do
  describe 'encryption of message' do
    it 'can encrypt a message' do
      enigma_machine = Enigma.new
      message = 'Hello'
      code = 123412
      date = Date.today

      expect(enigma_machine.encrypt(message, code, date)).to eq('')
    end

    it 'can generate the correct character map' do
      enigma_machine = Enigma.new
      
      expect(enigma_machine.character_map[4]).to eq('e')
    end

  end
end
