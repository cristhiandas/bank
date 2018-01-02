require 'transactions.rb'

describe Transactions do

  context 'when making a deposit' do
    it 'saves the value on a hash' do
      expect(subject.deposit(500)).to eq({transaction: "deposit", value: 500, balance: 500})
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
  end
end
