class TransactionsList
  attr_reader :transactions
  
  def initialize
    @transactions = []
  end

  def save_transaction(hash)
    @transactions << hash
  end
end
