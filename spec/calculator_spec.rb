require_relative '../calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  describe '#add' do
    it 'adds two numbers' do
      expect(calc.add(2, 3)).to eq(5)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(calc.subtract(10, 5)).to eq(5)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers' do
      expect(calc.multiply(4, 5)).to eq(20)
    end
  end

  describe '#divide' do
    it 'divides two numbers' do
      expect(calc.divide(10, 2)).to eq(5)
    end

    it 'raises error on division by zero' do
      expect { calc.divide(10, 0) }.to raise_error(ArgumentError)
    end
  end
end
