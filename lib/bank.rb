# Bank class
class Bank
  def initialize
    @account = Account.new
  end

  def make_deposit(value)
    @account.deposit(value)
  end

  def make_withdrawal(value)
    @account.withdrawal(value)
  end

  def print_statement
    @account.print_transactions
  end
end
