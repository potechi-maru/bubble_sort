# separate for method
  def initialize(array)
    number_of_elements = array.length
    @i = 0
    @minus_one = number_of_elements - 1
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
        poo, qoo = qoo, poo # q(^-^)p
      end
    end
  end
