require 'time'
require_relative '../lib/enigma.rb'

RSpec.describe Enigma do
  before{(@enigma_machine = Enigma.new)}
  describe 'encryption of message' do
    it 'can encrypt a message' do
      message = 'Hello'
      code = '123412'
      date = Date.today

      expect(@enigma_machine.encrypt(message, code, date)).to eq('')
    end

    it 'can generate the correct character map' do
      expect(@enigma_machine.character_map[4]).to eq('e')
    end

    it 'can rotate characters using the character map' do
      expect(@enigma_machine.character_rotator('Hello')).to eq('')
    end
    

    it 'can generate the correct rotation with a date and code' do
      expect(@enigma_machine.generate_character_rotation('12341', "051018").join).to eq('18263645')
    end

    it 'can generate the correct A rotation' do
      expect(@enigma_machine.generate_a_rotation('12341', "051018")).to eq(18)
    end

    it 'can generate the correct B rotation' do
      expect(@enigma_machine.generate_b_rotation('12341', "051018")).to eq(26)
    end

    it 'can generate the correct A rotation' do
      expect(@enigma_machine.generate_c_rotation('12341', "051018")).to eq(36)
    end

    it 'can generate the correct A rotation' do
      expect(@enigma_machine.generate_d_rotation('12341', "051018")).to eq(45)
    end

    it 'can generate the correct A offset' do
      expect(@enigma_machine.generate_offset_a("051018")).to eq('6')
    end

    it 'can generate the correct B offset' do
      expect(@enigma_machine.generate_offset_b("051018")).to eq('3')
    end

    it 'can generate the correct C offset' do
      expect(@enigma_machine.generate_offset_c("051018")).to eq('2')
    end

    it 'can generate the correct D offset' do
      expect(@enigma_machine.generate_offset_d("051018")).to eq('4')
    end

  end
end
