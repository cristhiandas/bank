require 'transactions.rb'

describe Transactions do

  context 'when making a deposit' do
    it 'saves the value on a hash' do
      expect(subject.deposit(500, '2018-01-02')).to eq({transaction: "deposit", value: 500, balance: 500, date: '2018-01-02'})
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

    it 'knows have the right balance on the hash' do
      subject.deposit(500)
      expect(subject.deposit(500, '2018-01-02')).to eq({transaction: "deposit", value: 500, balance: 1000, date: '2018-01-02'})
    end
  end

  context 'when making a withdrawal' do
    it 'saves the value on a hash' do
      subject.deposit(500)
      expect(subject.withdrawal(500, '2018-01-02')).to eq({transaction: "withdrawal", value: 500, balance: 0, date: '2018-01-02'})
    end
  end
end
