require 'transactions.rb'

describe Transactions do

  context 'when making a deposit' do
    it 'saves the value on a hash' do
      expect(subject.deposit(500, '2018-01-02')[0]).to eq({transaction: "deposit", value: 500, balance: 500, date: '2018-01-02'})
    end

    it 'changes the balance' do
      subject.deposit(500)
      expect(subject.balance).to eq(500)
    end
  end

  context 'when multiple deposits' do
    it 'changes the balance properly' do
      subject.deposit(500)
      subject.deposit(500)
      expect(subject.balance).to eq(1000)
    end

    it 'have the right balance on the hash' do
      subject.deposit(500)
      expect(subject.deposit(500, '2018-01-02')[1]).to eq({transaction: "deposit", value: 500, balance: 1000, date: '2018-01-02'})
    end
  end

  context 'when making a withdrawal' do
    it 'saves the value on a hash' do
      subject.deposit(500)
      expect(subject.withdrawal(500, '2018-01-02')[1]).to eq({transaction: "withdrawal", value: 500, balance: 0, date: '2018-01-02'})
    end

    it 'changes the balance' do
      subject.deposit(500)
      subject.withdrawal(500)
      expect(subject.balance).to eq(0)
    end
  end

  context 'when doing multiple withdrawals' do
    it 'changes the balance properly' do
      subject.deposit(500)
      subject.withdrawal(100)
      subject.withdrawal(100)
      expect(subject.balance).to eq(300)
    end
    it 'sets the balance properly' do
      subject.deposit(500)
      subject.withdrawal(100)
      expect(subject.withdrawal(100, '2018-01-02')[2]).to eq({transaction: "withdrawal", value: 100, balance: 300, date: '2018-01-02'})
    end
  end
end
