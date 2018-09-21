def caesar_cipher(str, key)
  result = ""

  codes = str.codepoints
  codes.each do |c|
    if c >= 65 && c <= 90
      result += (65 + ((c - 65 + key) % 26)).chr
    elsif c >= 97 && c <= 122
      result += (97 + ((c - 97 + key) % 26)).chr
    else
      result += c.chr
    end
  end
  result
end

p caesar_cipher("What a string!", 5)