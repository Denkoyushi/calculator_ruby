require 'rspec'
require 'calculator'

describe('calculator') do
  it('takes a string ie "what is 5 plus 8?" and returns the answer as an integer') do
    calculator("What is 5 plus 8?").should(eq(13))
  end
end
