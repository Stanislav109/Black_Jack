class Card

  attr_reader :rank, :suite

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end

  def to_s
    "#{rank} #{suite}"
  end

end