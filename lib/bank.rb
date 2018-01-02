class Bank
  def initialize
    @transaction = Transactions.new
  end

  def make_deposit(value)
    @transaction.deposit(value)
  end

end
