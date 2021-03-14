class Hand
  attr_accessor :cards_deck, :money, :scores

  def initialize(cards, _player_name = nil)
    @cards_deck = cards
    @money = Bank.new
    @scores = count_scores(cards)
  end

  def add_card(card)
    cards_deck << card
  end

  def count_scores(cards)
    self.scores ||= 0
    Array(cards).each do |card|
      self.scores += if card.rank == 'T' && scores < 11
                       11
                     elsif card.rank == 'T' && scores > 11
                       1
                     elsif card.rank.to_i.zero? && card.rank != 'T'
                       10
                     else
                       card.rank.to_i
                     end
    end
    self.scores
  end
end
