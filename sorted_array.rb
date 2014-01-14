class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    @input_arr = []
  end

  def add(new_ele)
    index = first_larger_index(each_element)
    @internal_arr.insert(index, each_element)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)

    if start_ind >= end_ind
      end_ind

    elsif
      middle_index = (end_ind + start_ind) / 2
      if target > @internal_arr[middle_index]
        first_larger_index(target, middle_index+1, end_ind)

    else
      first_larger_index(target, start_ind, middle_index)

    end
  end
  end

  def index(target)
    
  end
end
