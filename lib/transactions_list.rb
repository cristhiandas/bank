require 'csv'

class TransactionsList
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def save_transaction(transaction)
    @transactions << transaction
  end

  def print_transactions
    print_header
    print_content
  end

  private

  def print_header
    puts 'Transaction  || Debit ||  Balance  || Date ||'
  end

  def print_content
    @transactions.each do |transaction|
      transaction.each_value {|value| print "   #{value}   ||"}
      print "\n"
    end
  end
end
