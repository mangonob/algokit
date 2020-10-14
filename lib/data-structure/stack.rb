##
# Stack can auto increse capcity
#
class Algokit::Stack
  def data
    @data = [] unless @data
    return @data
  end

  attr_writer :data
  attr_accessor :stack_top_ptr
  attr_accessor :init_capacity

  protected :data, :data=
  protected :stack_top_ptr, :stack_top_ptr=
  protected :init_capacity, :init_capacity=

  def initialize(capcity=512)
    alloc_captity capacity
    self.init_capacity = capacity
    self.stack_top_ptr = 0
  end

  ##
  # Get value in stack at index
  # :args: index
  # [index] index of element in stack
  #
  def [](index)
    self.data[index]
  end

  ##
  # Assign new value to element in stack
  # :args: index, value
  # [index] index of element in stack
  # [value] new value
  #
  def []=(index, value)
    data[index] = value
  end

  def push
  end

  def pop
  end

  def top
  end

  def clean
    alloc_captity(512)
  end

  private

  def in_range(index)
    in_range = index >= 0 and index < self.data.length
    throw 'index out of range' unless in_range
    return in_range
  end

  def alloc_captity(capcity)
    self.[data][capacity...] = []
  end
end