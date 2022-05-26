# first iteration

def unique_in_order(iterable)
  array = iterable.is_a?(String) ? iterable.split("") : iterable
  
  array.map.with_index do |item, idx|
    array[idx + 1] == item ? next : item  
  end.compact
end

# second iteration

def unique_in_order(iterable)
  array = iterable.is_a?(String) ? iterable.split("") : iterable
  
  array.select.with_index do |item, idx|
    array[idx + 1] != item
  end
end

# third iteration

def unique_in_order(iterable)
  array = iterable.is_a?(String) ? iterable.split("") : iterable
  
  array.chunk(&:itself).map(&:first)
end
