# frozen_string_literal: true

# Уравнения проверки:
# -x^2+sin(x/2)=0
# x^5+3x^3+x^2+1=0

module Calc
  def start
    f1_lambda = ->(x) { -x**2 + Math.sin(x.to_f / 2) }
    f1_proc = proc { |x| -x**2 + Math.sin(x.to_f / 2) }
    f2_lambda = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
    f2_proc = proc { |x| x**5 + 3 * x**3 + x**2 + 1 }
    eps = 0.1

    x11 = Root.root(f1_lambda, eps)
    x12 = Root.root(f1_proc, eps)
    x21 = Root.root(f2_lambda, eps)
    x22 = Root.root(f2_proc, eps)

    if x11 == x12
      puts 'Функция: -x^2+sin(x/2)=0'
      puts "Минимальный отрицательный корень : #{x11}"
      puts 'Ответ двумя различными способами вызовов сходится!'
    end
    puts
    if x21 == x22
      puts 'Функция: x^5+3x^3+x^2+1=0'
      puts "Минимальный отрицательный корень : #{x21}"
      puts 'Ответ двумя различными способами вызовов сходится!'
    end
  end

  class Root
    def self.root(func, eps)
      step = 0
      loop do
        step -= 0.01
        return step if func.call(step).abs < eps
      end
    end
  end
end
