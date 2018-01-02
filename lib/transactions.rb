require 'date'

class Transactions

  attr_reader :balance

  def initialize
    @balance = 0
    @trans = TransactionsList.new
  end

  def deposit(value, date = Time.now.strftime("%Y-%d-%m"))
    @balance += value
    save_transaction_hash("deposit", value, date)
  end

  def withdrawal(value, date = Time.now.strftime("%Y-%d-%m"))
    @balance -= value
    save_transaction_hash("withdrawal", value, date)
  end

  private

  def save_transaction_hash(type, value, date)
    @trans.save_transaction({transaction: type, value: value, balance: @balance, date: date})
  end

end
