class Transactions

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(value)
    @balance += value
    {transaction: "deposit", value: value, balance: @balance}
  end

end
