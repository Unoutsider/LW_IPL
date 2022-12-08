# frozen_string_literal: true

require_relative 'calc'
include Calc

RSpec.describe Calc do
  context 'When accuracy is 0.001' do
    it 'number of splits is 6' do
      expect(processor(0.001)[1]).to eq(6)
    end
  end
  context 'When accuracy is 0.0001' do
    it 'number of splits is 19' do
      expect(processor(0.0001)[1]).to eq(19)
    end
  end
  context 'When accuracy is 0.00001' do
    it 'number of splits is 59' do
      expect(processor(0.00001)[1]).to eq(59)
    end
  end
end
