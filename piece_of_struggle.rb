# separate for method
class BubbleSort
  def initialize(array)
    # number_of_elements = array.length
    @i = 0
    @minus_one = array.length - 1
    @array = array
  end
  
  def sort
    @minus_one.times do
      comparison
      @i += 1
    end
  end
  
  def comparison
    (@minus_one - @i).times do |point|
      neighbor = point + 1
      poo = @array[point]
      qoo = @array[neighbor] # p(^-^)q
      # qoo = array[point + 1]でもいいかも
      if poo > qoo
        # poo, qoo = qoo, poo から変更
        @array[point], @array[neighbor] = qoo, poo # q(^-^)p
      end
    end
  end
end

p array = Array.new(10){ rand(100) }
puts "Sort asc..."
bubble_sort = BubbleSort.new(array)
bubble_sort.sort
puts "Finish!"
p array