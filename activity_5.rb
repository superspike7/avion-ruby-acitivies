def compare_lower(smallest, current)
  smallest < current ? smallest : current 
end

def smallest_number(arr)
  arr.reduce(&method(:compare_lower))
end


p smallest_number [31, 15, 88 ,2] # 2
p smallest_number [34, -345, -1 ,100] # -345 
p smallest_number [34, -345, -1 ,100, -4500] # -4500

