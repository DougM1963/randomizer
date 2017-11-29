def assign_pairs (student_names) # function that receives array as an argument
	shuffled_students = student_names.shuffle # creates a new array that is shuffled version of the arraypassed in argument
	pair = shuffled_students.each_slice(2).to_a # creates a new array that holds slices of arrays broken down by 2 students
	if pair.last.count == 1 #if the last group only has one person in it 
		pair.first.push(pair.last[0]) #push that into the first array   
        last_item = pair.pop # remove the last array
	end
	p pair 
end

assign_pairs(["christi", "doug", "tyler", "jim", "chris"]) # run the function