require 'csv'

class TransactionsList
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def save_transaction(hash)
    @transactions << hash
  end

  def print_list
    CSV.foreach('lib/transaction_list.csv') do |line|
      transaction = line[0]
      value = line[1]
      balance = line[2]
      date = line[3]
      add_transaction_to_list(transaction, value, balance, date)
    end
  end

  private

  def add_transaction_to_list(transaction, value, balance, date)
    @transactions << {transaction: transaction, value: value.to_i, balance: balance.to_i, date: date}
  end
end
