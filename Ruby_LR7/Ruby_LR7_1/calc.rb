# frozen_string_literal: true

module Calc
  def start
    elems = %w[first last]
    file_f = File.new('F.txt', 'w')
    file_g = File.new('G.txt', 'w')
    10.times { file_f.print "#{elems[rand(0..1)]} " }
    10.times { file_g.print "#{elems[rand(0..1)]} " }
    file_f.close
    file_g.close

    file_f = File.open('F.txt', 'r')
    file_g = File.open('G.txt', 'r')
    creat_H_file(file_f, file_g, 'H')
    file_f.close
    file_g.close

    info('F.txt')
    info('G.txt')
    info('H.txt')
  end

  def creat_H_file(f1, f2, n)
    data_1 = f1.read.split
    data_2 = f2.read.split
    data_h = new_data(data_1, data_2)
    file_h = File.new("#{n}.txt", 'w')
    file_h.print data_h
    file_h.close
  end

  def new_data(d1, d2)
    d = []
    [d1.length, d2.length].min.times do |i|
      if d1[i] == d2[i]
        d.push(d1[i])
      else
        break
      end
    end
    d.push('There are no matching initial elements in the files under study') if d.empty?
    d.join(' ')
  end

  def info(name)
    f = File.open(name, 'r')
    puts "Содержимое файла #{name} - #{f.read}"
    f.close
  end
end
