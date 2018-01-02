require 'csv'

class TransactionsList
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def save_transaction(hash)
    @transactions << hash
  end

  def print_transactions
    read_list_of_transactions
    prints_content
  end

  private

  def prints_content
    puts "Transaction   ||   Debit/Credit  ||  Balance  ||  Date"
    transactions.each do |transaction|
      puts "    #{transaction[:transaction]}   ||       #{transaction[:value]}        ||   #{transaction[:balance]}   ||   #{transaction[:date]}"
    end
  end

  def read_list_of_transactions
    CSV.foreach('lib/transaction_list.csv') do |line|
      transaction = line[0]
      value = line[1]
      balance = line[2]
      date = line[3]
      add_transaction_to_list(transaction, value, balance, date)
    end
  end

  def add_transaction_to_list(transaction, value, balance, date)
    @transactions << {transaction: transaction, value: value.to_i, balance: balance.to_i, date: date}
  end
end
