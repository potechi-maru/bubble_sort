def sort(array)
  i = 0
  minus_one = array.length - 1
  minus_one.times do
    p array
    (minus_one - i).times do |point|
      if array[point] > array[point + 1]
        array[point] , array[point + 1] = array[point + 1], array[point]
      end
    end
    i += 1
  end
end

p array = Array.new(10){ rand(100) }
puts "Sort asc..."
sort(array)
puts "Finish!"
p array