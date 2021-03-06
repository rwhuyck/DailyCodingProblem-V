
/*
This problem was recently asked by Google.

Given a list of numbers and a number k, return whether any two numbers from 
the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?
*/

fn main() 
{
	mut input := [10, 15, 3, 7]
	k := 17

	result := adden(input, k)
	println(result)
}

fn adden(input []int, k int) bool 
{
	for i in input 
	{
		// Can't define diff inside the if statement,
		// must initialize first
		mut diff := 0
		
		if k > i 
		{
			diff = k - i
		}
		else
		{
			diff = i - k
		}

		if diff in input 
		{
			return true
		}
	}

	return false
}