# frozen_string_literal: true

require_relative 'calc'
include Calc

RSpec.describe Calc do
  context 'When a is 0 and b is 0' do
    it 'returns 0.0' do
      expect(calc(0, 0)).to eq 0.0
    end
  end
  context 'When a is 90 and b is 0' do
    it 'returns 1.0' do
      expect(calc(90, 0)).to eq 1.0
    end
  end
  context 'When a is 270 and b is 0' do
    it 'returns -1.0' do
      expect(calc(270, 0)).to eq(-1.0)
    end
  end
end
