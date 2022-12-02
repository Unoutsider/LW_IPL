# frozen_string_literal: true

module Calc
  def start
    print 'Введите массив чисел через пробел: '
    begin
      arr = gets.chomp.split
      arr.each_with_index do |elem, i|
      arr[i] = Integer(elem)
      end
    rescue StandardError
      print('Неправильный формат ввода или недопустимые символы, попробуйте ещё раз: ')
      retry
    end
    print 'Новый массив: '
    print sort(arr)
  end
#Заменить each на each_with_index и убрать кур н
def sort(arr)
  sub_arr = [arr[0]]
  ans_arr = []
  sl = arr.slice(1, arr.length)
  sl.each_with_index do |num, i|
    if sl[i] >= arr[i]
      sub_arr.push(num)
    else
      ans_arr.push(sub_arr)
      sub_arr = []
      sub_arr.push(num)
    end
  end
  ans_arr.push(sub_arr)
  ans_arr.sort.reverse
end
=begin
#Ещё один вариант
def sort(arr)
  sub_arr = [arr[0]]
  ans_arr = []
  arr.each_with_index do |num, i|
    i += 1
    if arr[i]
      if arr[i] >= arr[i-1]
        sub_arr.push(arr[i])
      else
        ans_arr.push(sub_arr)
        sub_arr = []
        sub_arr.push(arr[i])
      end
    end
  end
  ans_arr.push(sub_arr)
  ans_arr.sort.reverse
end
=end
=begin
#Старый вариант:
  def sort(arr)
    sub_arr = []
    ans_arr = []
    cur_n = arr[0]
    count = 0
    arr.each do |num|
      if num >= cur_n
        sub_arr.push(num)
        cur_n = num
      else
        ans_arr.push(sub_arr)
        count += 1
        sub_arr = []
        cur_n = num
        sub_arr.push(num)
      end
    end
    ans_arr.push(sub_arr)
    ans_arr.sort.reverse
  end
=end
end
