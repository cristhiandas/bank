require 'date'

class Transactions

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(value, date = Time.now.strftime("%Y-%d-%m"))
    @balance += value
    {transaction: "deposit", value: value, balance: @balance, date: date}
  end

end
