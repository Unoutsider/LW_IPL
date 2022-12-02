# frozen_string_literal: true

require_relative 'calc'
include Calc

RSpec.describe Calc do
  context 'When array is 2 3 4 5 1 2 3 7 5 6 7 3' do
    it 'returns [[5, 6, 7], [3], [2, 3, 4, 5], [1, 2, 3, 7]]' do
      expect(sort([2, 3, 4, 5, 1, 2, 3, 7, 5, 6, 7, 3])).to eq([[5, 6, 7], [3], [2, 3, 4, 5], [1, 2, 3, 7]])
    end
  end
  context 'When array is 1 2 3 4 2 3 5 6 1 1' do
    it 'returns [[2, 3, 5, 6], [1, 2, 3, 4], [1, 1]]' do
      expect(sort([1, 2, 3, 4, 2, 3, 5, 6, 1, 1])).to eq([[2, 3, 5, 6], [1, 2, 3, 4], [1, 1]])
    end
  end
  context 'When array is 1 2 3 4 5 6 7 8 9' do
    it 'returns [[1, 2, 3, 4, 5, 6, 7, 8, 9]]' do
      expect(sort([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq([[1, 2, 3, 4, 5, 6, 7, 8, 9]])
    end
  end
end
