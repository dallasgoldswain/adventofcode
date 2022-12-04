# frozen_string_literal: true

#part 1
sum = 0
File.foreach('input.txt') do |line|
  first, second = line.chomp.partition(/.{#{line.size / 2}}/)[1, 2]
  a = (first.chars.sort & second.chars.sort).join
  sum += /[[:upper:]]/.match(a).nil? ? a.bytes.join.to_i - 96 : a.bytes.join.to_i - 38
end
p sum
# a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
# 1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6
# 7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2
# part 2
sum = 0
File.readlines('input.txt', chomp: true).each_slice(3) do |lines|
  a = (lines[0].chars.sort & lines[1].chars.sort & lines[2].chars.sort).join
  sum += /[[:upper:]]/.match(a).nil? ? a.bytes.join.to_i - 96 : a.bytes.join.to_i - 38
end
puts sum
