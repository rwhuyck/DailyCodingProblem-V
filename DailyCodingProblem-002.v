 /*This problem was asked by Uber.
Given an array of integers, return a new array such that
each element at index i of the new array is the product
of all the numbers in the original array except the one at i.
For example, if our input was [1, 2, 3, 4, 5], the expected output 
would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], 
the expected output would be [2, 3, 6].
Follow-up: what if you can't use division?
*/

fn main() 
{
	input_one := [1, 2, 3, 4, 5]
	input_two := [3, 2, 1]

	result1 := element_prod(input_one)
	result2 := element_prod(input_two)
	println("Input 1 result: " + result1.str())
	println("Input 2 result: " + result2.str())
}

fn element_prod(input []int) []int
{
	mut result := []int{}

	// Loop through each position of input
	for i := 0; i < input.len; i++
	{
		mut prod := 1

		// Multiply all other positions except current one
		for j := 0; j < input.len; j++
		{
			if j != i
			{
				prod *= input[j]
			}
		}

		result << prod
	}

	return result
}

/* P.S. The usual for loop method of "for i in input" 
caused the following error: V panic: array.get: index out of range (i == 5, a.len == 5).
Consequently, the C form of for loop was used.
*/
