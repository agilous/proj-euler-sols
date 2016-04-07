class Factorer
  attr_reader :factors_table

  def initialize(number = nil)
    @number = number
    @factors_table = { }
  end

  def factor
    return nil if @number.nil?

    if !(@number.is_a? Integer) || @number < 1
      return nil
    elsif @number == 1
      return [1]
    else
      factors = [1]
      @factors_table = { "1" => factors }
      (2..@number).each do |i|
        return (@factors_table[i.to_s] + factors).uniq if @factors_table[i.to_s]
        factors = factors << i if @number % i == 0
      end

      @factors_table[@number.to_s] = factors
      factors
    end
  end

  private

  def is_square(n)
    (Math.sqrt(n).floor)**2 == n
  end
end

