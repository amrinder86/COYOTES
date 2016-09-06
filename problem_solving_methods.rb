#Release 0

def search_array(array,int)
  
    counter = -1
  array.each { |x| counter += 1 
    if int == x
          p counter
    end
    }

end
#driver code

arr1 = [42, 89, 23, 1]
search_array(arr1, 1)


#Release 1  

def fib(int)
  fibonacci = [0,1]
  n = int - 2
  a_number= 0 
  b_number= 1 
  n.times do
    temp = a_number
    a_number=b_number
    b_number = temp+b_number
    fibonacci << b_number
  end 
  return fibonacci

end
#driver code
  
  p fib(6)
  p fib(100)  

#Release 2

#1. We chose bubble sort
#2. What helps is visualizations. We used Google for research.
#3. We both felt underqualified, but exciting at the same time learning something new.
# Learning something new caused us to learn more about the topic
#4. From the list unsorted items we would take the first 2 elements by index and compare them first_item > second_item swap the items. Continue the process until this is true for all the items in the list. The output would be the assorted list in ascending order.

def bubble_sort(arr)
  return arr if arr.size <= 1
  swapped = true
  while swapped do
    swapped = false
    0.upto(arr.size-2) do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end    
  end

  arr
end
carol = [6, 3, 0, 2, 9, 4]
p bubble_sort(carol)