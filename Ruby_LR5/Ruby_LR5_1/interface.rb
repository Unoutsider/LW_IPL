# frozen_string_literal: true

require_relative 'calc'
include Calc

puts 'Данная программа вычисляет функцию y = ((sin(a) - b) / (|b| + cos(b^2))) при заданных параметрах a и b'
puts 'Пользователю необходимо лишь ввести значения a и b'
print('Введите значение a: ')
a = input
print('Введите значение b: ')
b = input
puts "Результат вычисления функции: #{calc(a, b)}"
