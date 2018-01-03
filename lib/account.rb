require 'date'
# Account class
class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_list = TransactionsList.new
  end

  def deposit(value, date = Time.now.strftime('%Y-%d-%m'))
    @balance += value
    save_transaction_hash('deposit', value, date)
  end

  def withdrawal(value, date = Time.now.strftime('%Y-%d-%m'))
    raise 'Insufficient funds' if @balance - value < 0
    @balance -= value
    save_transaction_hash('withdrawal', value, date)
  end

  def print_transactions
    @transaction_list.print_transactions
  end

  private

  def save_transaction_hash(type, value, date)
    @transaction_list.save_transaction(transaction: type, value: value,
                                       balance: @balance, date: date)
  end
end
