require "encode_with_alphabet/version"

module EncodeWithAlphabet
  ALPHABET = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  def self.encode(number, alphabet = ALPHABET)
    raise 'number must be an integer' unless number.kind_of? Integer
    raise 'alphabet must be non-empty' if alphabet.empty?

    return alphabet[0,1] if number == 0

    base = ''
    sign = ''

    if number < 0
      sign = '-'
      number = - number
    end

    while number != 0
      number, i = number.divmod alphabet.size
      base = alphabet[i, 1] + base
    end

    return sign + base
  end
end
