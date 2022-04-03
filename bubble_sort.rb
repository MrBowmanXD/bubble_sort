def bubble_sort array
  sorted = []
  array.each do |number|
    if number > array[array.index(number) + 1]
      sorted.push(number)
    else
      sorted.unshift(number)
    end
  end
  print sorted
  print "\n"
  def sort sorted, i = 0, unsorted = true
    if unsorted == true
      print sorted[i]
      print "\n"
      print sorted[i + 1]
      if sorted == sorted.sort
        puts "Finished"
      elsif  i < sorted.length - 1 && sorted[i] > sorted[i + 1] 
      sorted[i], sorted[i + 1] = sorted[i + 1], sorted[i]
        sort(sorted, i += 1)
      elsif i < sorted.length - 1 && sorted[i] < sorted[i + 1]
        sort(sorted, i += 1)
      else
        sort(sorted, i = 0)
      end
    end
  end
  sort(sorted)
  sorted
end


print bubble_sort([4,3,78,2,0,2]) # answer: [0,2,2,3,4,78]