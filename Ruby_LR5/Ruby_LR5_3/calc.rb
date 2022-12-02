# frozen_string_literal: true

module Calc
  def start
    #loop do
    #  print('Введите строку: ')
    #  str = gets.chomp
    #  break if str == '0'
    # `print("\nИсходная строка: #{str}")`
    #  print("\nСкорректированная строка: #{adjust(str)}\n\n")
    #end

    begin
      print('Введите строку: ')
      str = gets.chomp
      print("\nИсходная строка: #{str}")
      print("\nСкорректированная строка: #{adjust(str)}\n\n")
    end while str != '0'
    puts 'Программа завершена!'
  end
#вместо each do -> arr.select{|x| x.length > 1}
def adjust(str)
  arr = str.split
  adjusted_arr = arr.select{|x| x.length > 1}
  adjusted_arr.join(' ')
end
=begin
#Старый код
  def adjust(str)
    arr = str.split
    adjusted_arr = []
      arr.each do |element|
      adjusted_arr.push(element) if element.length != 1
    end
    adjusted_arr.join(' ')
  end
=end
end
