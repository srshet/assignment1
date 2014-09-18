class Integer

  def to_roman
    results = []
    result1 = ""
    number = self

    return "Wrong Input! Please provide number!" unless number.is_a? Numeric

    return "Wrong Input! Please provide integer number!" if number.is_a? Float

    if number > 4999
      return "This programs accepts decimal numbers in the range 1 to 4999"
    end

    roman_conventions.keys.each do |key|
      quotient, modulus = number.divmod(key)
      result1 << roman_conventions[key] * quotient
      number = modulus
    end
    result1
  end

  private

  def roman_conventions
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end

  p "99.to_roman ::" + 99.to_roman
  p "1000.to_roman" + 1000.to_roman
  p "49.to_roman" + 49.to_roman
  p "2999.to_roman" + 2999.to_roman
  p "299.to_roman" + 2999.to_roman


end