class Card
  attr_reader :rank, :suite

  SUITES = %w[♦ ♣ ♠ ♥].freeze
  RANKS = %w[2 3 4 5 6 7 8 9 10 В Д К Т].freeze

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end

  def to_s
    "#{rank} #{suite} "
  end
end
