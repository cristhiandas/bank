class Bank
  def initialize
    @transaction = Transactions.new
  end

  def make_deposit(value)
    @transaction.deposit(value)
  end

  def make_withdrawal(value)
    @transaction.withdrawal(value)
  end
end
