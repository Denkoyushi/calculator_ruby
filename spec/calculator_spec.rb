require 'rspec'
require 'calculator'

describe('calculator') do
  it('takes a string ie "what is 5 plus 8?" and returns the answer as a float') do
    calculator("What is 5 plus 8?").should(eq(13))
  end

  it('takes a string ie "what is 9 minus 4?" and returns the answer as a float') do
    calculator("what is 9 minus 4?").should(eq(5))
  end

  it('takes a string ie "what is 6 times 3?" and returns the answer as a float') do
    calculator("what is 6 times 3?").should(eq(18))
  end

  it('takes a string ie "what is 12 divided by 4?" and returns the answer as a float') do
    calculator("what is 12 divided by 4?").should(eq(3))
  end

  it('takes a string ie "what is 12.9 divided by 4.3?" and returns the answer as a float') do
    calculator("what is 5 divided by 2").should(eq(2.5))
  end  
end
