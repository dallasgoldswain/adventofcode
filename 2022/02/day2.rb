# frozen_string_literal: true

MOVES = {
  A: 'Rock',
  B: 'Paper',
  C: 'Scissors',
  X: 'Rock',
  Y: 'Paper',
  Z: 'Scissors'
}.freeze

MOVES_WIN = {
  X: 'C',
  Y: 'A',
  Z: 'B'
}.freeze

MOVES_DRAW = {
  X: 'A',
  Y: 'B',
  Z: 'C'
}.freeze

MOVES_LOSE = {
  X: 'B',
  Y: 'C',
  Z: 'A'
}.freeze

SCORE_MOVES = {
  X: 1,
  Y: 2,
  Z: 3
}.freeze

SCORE_WIN = {
  "lose": 0,
  "draw": 3,
  "win": 6
}.freeze

score = 0
File.foreach('input.txt') do |line|
  them, me = line.split
  lval = them.ord - 'A'.ord
  result = (me.ord - 'X'.ord - 1) % 3
  rval = (lval + result) % 3
  score += rval + 1
  case result
  when 0
    score += 3
  when 1
    score += 6
  end
end

p score
