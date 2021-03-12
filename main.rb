require_relative 'card'
require_relative 'deck'
require_relative 'bank'
require_relative 'user_interface'
require_relative 'dealer'
require_relative 'player'
require_relative 'game'

puts 'Привет! Как тебя зовут?'
name = gets.chomp!
puts "Сыграем в Black Jack, #{name} !"
@game = Game.new(name)
@game.start
