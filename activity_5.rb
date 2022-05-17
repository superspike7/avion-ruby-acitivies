def smallest_number(arr)
  arr.reduce do |smallest, current|
    smallest < current ? smallest : current 
  end
end


p smallest_number [31, 15, 88 ,2] # 2
p smallest_number [34, -345, -1 ,100] # -345 
p smallest_number [34, -345, -1 ,100, -4500] # -4500

