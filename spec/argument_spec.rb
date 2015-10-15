require 'instantize'

class TestKlass
  include Instantize::Argument

  def initialize(param_one, param_two)
    instantize local_context
  end
end

describe Instantize::Argument do

  describe '#instantize' do
    it 'converts parameters to instance variables' do
      klass = TestKlass.new(1, 'two')
      expect(klass.instance_variable_get(:@param_one)).to eq(1)
      expect(klass.instance_variable_get(:@param_two)).to eq('two')
    end
  end

end