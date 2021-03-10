class UserInterface

  attr_accessor :laps, :start

  def initialize
    @laps = 0
    @start = 0
  end

  def start_lap_info(player, dealer)
    puts "Ваши карты:"
    player.cards_deck.each { |card| puts " #{card} " }
    puts "Карты дилера:"
    dealer.cards_deck.each { puts "** " }
    puts "Ваши очки : #{player.scores}"
    puts "Ваш банк: #{player.money.deposit}"
  end

  def game_actions(player)
    puts "Выберите действие:"
    puts "1 - Пропустить ход"
    puts "2 - Добавить карту" if player.cards_deck.count < 3
    puts "3 - Открыть карты"
    gets.chomp!
  end

  def show_cards(player, dealer)
    puts "Ваши карты: #{player.cards_deck}"
    puts "Карты дилера: #{dealer.cards_deck}"
  end

  def lap_result(result)
    if result == "win"
      puts "Вы выиграли!"
      puts "Новая раздача:"
    elsif result == "draw"
      puts "Ничья!"
      puts "Новая раздача:"
    else
      puts "Вы проиграли"
      puts "Новая раздача:"
    end
  end

  def choice(choice, player, dealer)
    if choice == "y"
      player.money = Bank.new
      dealer.money = Bank.new
      self.start = 1
    else
      puts "Спасибо за игру! Пока!"
      self.laps = "n"
    end
  end

  def final_result(player, dealer)
    if dealer.money.deposit == 0
      puts "Поздравляем, вы выиграли игру! Сыграете еще раз? y / n"
      choice = gets.chomp!
      choice(choice, player, dealer)
    elsif player.money.deposit == 0
      puts "Вы проиграли, сыграете еще раз?  y / n"
      choice = gets.chomp!
      choice(choice, player, dealer)
    end
  end
end