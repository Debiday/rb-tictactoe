require_relative "./lib/tic_tac_toe.rb"

puts "Welcome to tic-tac-toe"
puts "Please enter your name, player 1: "
player_1 = gets.chomp
puts "Please enter your name, player 2: "
player_2 = gets.chomp

player_1 = TicTacToe::Player.new({color: "X", name: "#{player_1}"})
player_2 = TicTacToe::Player.new({color: "O", name: "#{player_2}"})
players = [player_1, player_2]
TicTacToe::Game.new(players).play