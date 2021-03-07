class Player < Dealer

  attr_reader :player_name

  def initialize(cards, player_name)
    super
    @player_name = player_name
  end
end