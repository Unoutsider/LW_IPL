# frozen_string_literal: true

# y = ((sin(a) - b) / (|b| + cos(b^2)))

module Calc
  def calc(a, b)
    if (b.abs + Math.cos((b * Math::PI / 180)**2)) != 0
      ((Math.sin(a * Math::PI / 180) - b) / (b.abs + Math.cos((b * Math::PI / 180)**2)))
    else
      puts 'В ходе вычисления формулы было обнаружено деление на 0. Пожалуйста введите другие числа!'
    end
  end

  def input
    begin
      x = Float(gets.chomp)
    rescue StandardError
      print('Вы ввели недопустимое значение, введите, пожалуйста, число: ')
      retry
    end
    x
  end
end
