#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

NAMES = Hash[0 => "",
		  1 => "one",
		  2 => "two",
	          3 => "three",
		  4 => "four",
		  5 => "five",
    		  6 => "six",
  		  7 => "seven",
		  8 => "eight",
  		  9 => "nine",
		 10 => "ten",
		 11 => "eleven",
		 12 => "twelve",	
                 13 => "thirteen",
	         14 => "fourteen",
		 15 => "fifteen",
		 16 => "sixteen",
		 17 => "seventeen",
	         18 => "eighteen",
		 19 => "nineteen",
		 20 => "twenty",
		 30 => "thirty",
		 40 => "forty",
	 	 50 => "fifty",
		 60 => "sixty",
		 70 => "seventy",
		 80 => "eighty",
 	 	 90 => "ninety",
		100 => "hundred",
	       1000 => "thousand" ]

def to_speech(n, sep="")
	if (n%100).zero? then
		h_and = ""
	else
		h_and = "and"
	end
	if (n<=20)
		return NAMES[n]
	end
	if (n<30)
		return NAMES[20] + sep + NAMES[n-20]
	end
	if (n<40)
		return NAMES[30] + sep + NAMES[n-30]
	end
	if (n<50)
		return NAMES[40] + sep + NAMES[n-40]
	end
	if (n<60)
		return NAMES[50] + sep + NAMES[n-50]
	end
	if (n<70)
		return NAMES[60] + sep + NAMES[n-60]
	end
	if (n<80)
		return NAMES[70] + sep + NAMES[n-70]
	end
	if (n<90)
		return NAMES[80] + sep + NAMES[n-80]
	end
	if (n<100)
		return NAMES[90] + sep + NAMES[n-90]
	end
	if (n<200)
		return NAMES[1] + NAMES[100] + sep + h_and + to_speech(n-100)
	end
	if (n<300)
		return NAMES[2] + NAMES[100] + sep + h_and + to_speech(n-200)
	end
	if (n<400)
		return NAMES[3] + NAMES[100] + sep + h_and + to_speech(n-300)
	end
	if (n<500)
		return NAMES[4] + NAMES[100] + sep + h_and + to_speech(n-400)
	end
	if (n<600)
		return NAMES[5] + NAMES[100] + sep + h_and + to_speech(n-500)
	end
	if (n<700)
		return NAMES[6] + NAMES[100] + sep + h_and + to_speech(n-600)
	end
	if (n<800)
		return NAMES[7] + NAMES[100] + sep + h_and + to_speech(n-700)
	end
	if (n<900)
		return NAMES[8] + NAMES[100] + sep + h_and + to_speech(n-800)
	end
	if (n<1000)
		return NAMES[9] + NAMES[100] + sep + h_and + to_speech(n-900)
	end
	if (n==1000)
		return NAMES[1] + sep + NAMES[1000]
	end
end

sum = 0

1.upto(1000) { |n| 
	sum += to_speech(n).size
}		
puts sum
