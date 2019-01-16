require "rspec/autorun"

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

describe "#caesar_cipher" do
  it "returns an empty string if the input string is empty" do
    expect(caesar_cipher("", 1)).to eq("")
  end

  it "doesn't change the original string if the given key is 0" do
    expect(caesar_cipher("hello", 0)).to eq("hello")
  end

  it "shifts each letter in the input string by the given key" do
    expect(caesar_cipher("hello", 3)).to eq("khoor")
  end

  it "shifts big letters correctly" do
    expect(caesar_cipher("A", 4)).to eq("E")
  end

  it "doesn't substitute non-alphabet characters" do
    expect(caesar_cipher("123-><", 5)).to eq("123-><") 
  end

  it "wraps around the alphabet correctly if the given key is too large" do
    expect(caesar_cipher("hello", 122)).to eq("zwddg")
  end
end

# try with 'ruby caesar_cipher.rb'