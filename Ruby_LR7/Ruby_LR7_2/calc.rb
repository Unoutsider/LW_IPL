# frozen_string_literal: true

#Заменить def value на attr_reader
module Calc
  class Symb
    attr_reader :name
    def initialize(name)
      @name = name
    end

    def code_number
      @name.ord
    end

    def type
      if @name.ord > 47 && @name.ord < 58
        'number'
      elsif (@name.ord > 64 && @name.ord < 91) || (@name.ord > 96 && @name.ord < 123)
        'letter'
      else
        'special symbol'
      end
    end

    def s_info
      puts "Symbol - #{name}"
      puts "Code number of symbol - #{code_number}"
      puts "Type of symbol - #{type}"
    end
  end

  class ProgressivSymb < Symb
    attr_reader :font
    def initialize(name, font)
      super(name)
      @font = font
    end

    def ps_info
      s_info
      puts "Font of progressiv symbol - #{font}"
    end
  end

  def start
    print 'Entert the type of object: Symbol - 1, Progressiv Symbol - 2: '
    n = gets.chomp
    case n
    when '1'
      print 'Entert the symbol: '
      sym = gets.chomp
      if sym.length == 1
        s = Symb.new(sym.to_s)
        s.s_info
      else
        puts 'Incorrect input!'
      end
    when '2'
      print 'Entert the symbol and font name by space: '
      sym = gets.chomp.split
      if sym.length == 2 && sym[0].length == 1
        ps = ProgressivSymb.new((sym[0]).to_s, (sym[1]).to_s)
        ps.ps_info
      else
        puts 'Incorrect input!'
      end
    else
      puts 'Incorrect input!'
    end
  end
end
