class Bank

  attr_accessor :deposit

  def initialize(deposit = 100)
    @deposit = deposit
  end

  def bet(cash)
    self.deposit -= cash
  end
end