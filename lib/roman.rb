class Numerals

  attr_accessor :number, :key_numerals, :digits

  def initialize
    @number = 6778 #1 + rand(999)
    @key_numerals = Hash[
      1 => "I",
      5 =>  "V",
      10 =>  "X",
      50 =>  "L",
      100 => "C",
      500 => "D",
      1000 => "M"]
      @digits = @number.to_s.chars.map(&:to_i)
    end


    def number_of_i
      if number % 5 == 0
        ""
      elsif ((number) -1) % 5 == 0
        @key_numerals[1]
      elsif ((number) -2) % 5 == 0
        @key_numerals[1] * 2
      elsif ((number) -3) % 5 == 0
        @key_numerals[1] * 3
      else ((number) + 1) % 5 == 0
        "-#{(@key_numerals[1])}"
      end
    end

    def number_of_v
      if @digits[-1] == 4
        "-#{(@key_numerals[5])}"
      elsif  @digits[-1] >= 5 && @digits[-1] <= 8
        @key_numerals[5]
      end
    end

    def number_of_x
    if @digits[-2] == 4 || @digits[-2] ==9
      "-#{@key_numerals[10]}"
    elsif  (6..8) === @digits[-1]
        @key_numerals[10]
      end
    end

    def number_of_l
    if @digits[-2].between?(4, 9)
        @key_numerals[50]
      end
    end

    def number_of_c
      if @digits[-3] == 4
        "-#{(@key_numerals[5])}"
      elsif  (5..8) === @digits[-3]
        @key_numerals[100]
      end
    end

    def number_of_d
    if @digits[-3] >= 4 && @digits[-3] <= 9
        @key_numerals[500]
      end
    end

  def output
    [number_of_i, number_of_v, number_of_x, number_of_l, number_of_c]
  end
end
