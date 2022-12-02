# frozen_string_literal: true

require_relative 'calc'
include Calc

RSpec.describe Calc do
  context 'When f1 - first last last first last, f2 - first last last last first' do
    it 'returns first last last' do
      f1 = File.new('Test_f1.txt', 'w')
      f2 = File.new('Test_f2.txt', 'w')
      f1.print 'first last last first last'
      f2.print 'first last last last first'
      f1.close
      f2.close

      f1 = File.open('Test_f1.txt', 'r')
      f2 = File.open('Test_f2.txt', 'r')
      creat_H_file(f1, f2, 'Test_h')
      f = File.open('Test_h.txt', 'r')
      expect(f.read).to eq('first last last')
    end
  end
end
