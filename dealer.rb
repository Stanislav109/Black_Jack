class Dealer

  attr_accessor :cards_deck, :money, :scores

  def initialize(cards)
    @cards_deck = cards
    @money = money
    @scores = count_scores(cards)
  end

  def add_card(card)
    cards_deck << card
  end

  def count_scores(cards)
    self.scores ||= 0
    Array(cards).each do |card|
      if card.rank == "T" && scores < 11
        self.scores += 11
      elsif card.rank == "T" && scores > 11
        self.scores += 1
      elsif card.rank.to_i == 0 && card.rank != "T"
        self.scores += 10
      else
        self.scores += card.rank.to_i
      end
    end
    self.scores
  end
end