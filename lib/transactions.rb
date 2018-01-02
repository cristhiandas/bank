require 'date'

class Transactions

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(value, date = Time.now.strftime("%Y-%d-%m"))
    @balance += value
    make_transaction_hash("deposit", value, date)
  end

  def withdrawal(value, date = Time.now.strftime("%Y-%d-%m"))
    @balance -= value
    make_transaction_hash("withdrawal", value, date)
  end

  private

  def make_transaction_hash(type, value, date)
    {transaction: type, value: value, balance: @balance, date: date}
  end

end
