# frozen_string_literal: true

file = File.open('input.txt')
lines = file.readlines.map(&:chomp)

count = 1
results = {}

lines.reduce(0) do |sum, value|
  if value.empty?
    results[count] = sum
    count += 1
    0
  else
    sum + value.to_i
  end
end

answer1 = results.values.max
answer2 = results.values.max(3).sum

p answer1, answer2
