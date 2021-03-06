require "pry"

def sort_array_asc (array)
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      -1
    else a > b
      1
    end
  end
end

def sort_array_desc (array)
  array.sort do |a, b|
    if a==b
      0
    elsif a<b
      1
    else a>b
      -1
    end
  end
end

def sort_array_char_count (array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    else a.length > b.length
      1
    end
  end
end

def swap_elements (array)
  array.insert(1, array.delete_at(2))
end

def reverse_array (array)
  array.reverse
end

def kesha_maker (array)
  new_array = []
  array.each do |element|
    x = element.split("")
    x.delete_at(2)
    x.insert(2, "$")
    new_array << x.join
  end
    new_array
end

def find_a (array)
  array.collect do |element|
   element if element.start_with?("a")
  end.compact
end

def sum_array (array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.collect.with_index do |element, index|
    if index == 1 
      element
    else 
      element + "s"
    end
  end
end
