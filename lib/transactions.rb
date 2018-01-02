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

  def withdrawal(value, date = Time.now.strftime("%Y-%d-%m"))
    {transaction: "withdrawal", value: value, balance: 0, date: date}
  end

end
