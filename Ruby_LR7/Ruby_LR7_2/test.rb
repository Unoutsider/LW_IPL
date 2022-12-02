# frozen_string_literal: true

require_relative 'calc'
include Calc

#ruby check ancestor; ruby check inheritance -> проверка наследования и, что объект действительно является объектом этого класса
RSpec.describe Calc do
  context 'When \ and STA' do
    it 'returns \, 92, special symbol, STA' do
      ps = ProgressivSymb.new(']', 'STA')
      expect(ps.name).to eq(']')
      expect(ps.code_number).to eq(93)
      expect(ps.type).to eq('special symbol')
      expect(ps.font).to eq('STA')
    end
  end
  context 'When q and TNR' do
    it 'returns q, 113, letter, TNR' do
      ps = ProgressivSymb.new('q', 'TNR')
      expect(ps.name).to eq('q')
      expect(ps.code_number).to eq(113)
      expect(ps.type).to eq('letter')
      expect(ps.font).to eq('TNR')
    end
  end
  context 'When 9' do
    it 'returns 9, 57, number' do
      s = Symb.new('9')
      expect(s.name).to eq('9')
      expect(s.code_number).to eq(57)
      expect(s.type).to eq('number')
    end
  end
  #Проверка наследования
  context 'Check ancestor' do
    it 'should inherit behavior from Parent' do
      expect(ProgressivSymb.superclass).to eq(Symb)
    end
  end
  #Проверка объектов на класс
  context 'Check Symb class objects' do
    it 'should be Symb' do
      s = Symb.new('1')
      expect(s.class).to eq(Symb)
    end
  end
  context 'Check ProgressivSymb class objects' do
    it 'should be ProgressivSymb' do
      ps = ProgressivSymb.new('q', 'TNR')
      expect(ps.class).to eq(ProgressivSymb)
    end
  end
end
