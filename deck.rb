class Deck
  attr_accessor :cards

  def initialize
    @cards = create_deck
  end

  def create_deck
    Card::SUITES.each_with_object([]) do |value, suite|
      Card::RANKS.each do |rank|
        suite << Card.new(rank, value)
      end
    end.shuffle!
  end
end
