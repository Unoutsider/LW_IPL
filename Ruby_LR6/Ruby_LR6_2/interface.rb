# frozen_string_literal: true

require_relative 'calc'
include Calc

puts 'Данная программа вычисляет значение определенного интеграла методом прямоугольников'
puts 'Подынтегральная функция: y = x / ((1 + x**3)**0.5), пределы интегрирования: [0,1]'
start
