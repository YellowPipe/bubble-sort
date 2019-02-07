def bubble_sort(arr)
	
	n = arr.length-1
	k = n
	n.times do
		arr.each_index do |index|
			break if index==k
			if arr[index] > arr[index+1]
				arr[index], arr[index+1] = arr[index+1], arr[index]
			end	
		end
		k-=1
	end
	return arr
end

def bubble_sort_by(arr)
	n = arr.length-1
	k = n
	n.times do
		arr.each_with_index do |value, index|
			break if index==k
			if yield(arr[index], arr[index+1])>0
				arr[index], arr[index+1] = arr[index+1], arr[index]
			end	
		end
		k-=1
	end
	return arr
end