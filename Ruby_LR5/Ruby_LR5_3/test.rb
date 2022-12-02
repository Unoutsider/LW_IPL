# frozen_string_literal: true

require 'faker'
require_relative 'calc'
include Calc
# string = 50.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")

RSpec.describe Calc do
  context 'When string is iwfw fe ew wefw f ewfe f f fwc rec' do
    it 'returns iwfw fe ew wefw f ewfe f f fwc rec' do
      expect(adjust('iwfw fe ew wefw f ewfe f f fwc rec')).to eq 'iwfw fe ew wefw ewfe fwc rec'
    end
  end
  context 'Faker testing' do
    it 'Faker testing complete' do
      w1 = Faker::Lorem.characters(number: 10)
      w2 = Faker::Lorem.characters(number: 10)
      w3 = Faker::Lorem.characters(number: 10)
      str = w1 + ' ' + w2 + ' ' +  w3
      str_t = '   ' + w1 + ' ' + 'z' + ' ' + w2 + ' ' + w3
      expect(adjust(str_t)).to eq str
    end
  end
  context 'When string is my nigga nigg nig ni n n n n   end' do
    it 'returns my nigga nigg nig ni end' do
      expect(adjust('my nigga nigg nig ni n n n n   end')).to eq 'my nigga nigg nig ni end'
    end
  end
end
