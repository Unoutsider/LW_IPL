# frozen_string_literal: true

# "Подынтегральная функция: y = x / ((1 + x**3)**0.5),
# пределы интегрирования: [0,1]"

module Calc
  def start
    print 'Enter the required calculation accuracy: '
    accuracy = Float(gets.chomp)
    res = processor(accuracy)
    puts "The value of the integral: #{res[0]}"
    puts "Number of segment splits: #{res[1]}"
  end

  # Метод средних прямоугольников
  def processor(accur)
    exval = 0.429798384032304
    n = 0
    s = 0
    while (s - exval).abs > accur
      n += 1
      h = 1.fdiv n
      cur_s = 0
      n.times do |i|
        x = i * h + (h / 2)
        y = x / ((1 + (x**3))**0.5)
        cur_s += y
      end
      cur_s *= h
      s = cur_s
    end
    [s, n]
  end

  # Метод левых прямоугольников
  #   def processor(accur)
  #     exval = 0.429798384032304
  #     n = 0
  #     s = 0
  #     while ((s - exval).abs) > accur do
  #       n += 1
  #       h = 1.fdiv n
  #       cur_s = 0
  #       n.times do |i|
  #         x = i * h
  #         y = x / ((1 + (x**3))**0.5)
  #         cur_s += y
  #       end
  #       cur_s *= h
  #       s = cur_s
  #     end
  #     [s, n]
  #   end
end
