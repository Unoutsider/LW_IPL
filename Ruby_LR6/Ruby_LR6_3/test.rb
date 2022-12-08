# frozen_string_literal: true

require_relative 'calc'
include Calc

RSpec.describe Calc do
  it 'Максимальный отрицательный корень и точность верны' do
    f1_lambda = ->(x) { -x**2 + Math.sin(x.to_f / 2) }
    f1_proc = proc { |x| -x**2 + Math.sin(x.to_f / 2) }
    f2_lambda = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
    f2_proc = proc { |x| x**5 + 3 * x**3 + x**2 + 1 }
    eps = 0.1

    x11 = Root.root(f1_lambda, eps)
    x12 = Root.root(f1_proc, eps)
    x21 = Root.root(f2_lambda, eps)
    x22 = Root.root(f2_proc, eps)

    real1 = 0
    real2 = -0.76132

    expect(x11).to eq(x12)
    expect((x11 - real1).abs < eps).to eq(true)
    expect(x21).to eq(x22)
    expect((x21 - real2).abs < eps).to eq(true)
  end
end
