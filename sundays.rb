#You are given the following information, but you may prefer to do some research for yourself.
#
#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

month=1
year=1
n_of_sundays = 0
day = 2 # sun = 0, ... mon = 6
days = Hash[0=>"sun", 1=>"mon", 2=>"tue", 3=>"wed", 4=>"thu", 5=>"fri", 6=>"sat"]
days_per_month = Hash[1=>31, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31]
while (year <= 100) do
  n_of_sundays += 1 if day == 0
  puts "#{year} #{month} #{days[day]}"
  if month != 2
    day += days_per_month[month]
  else 
    if (year < 100) 
      if (year % 4).zero? && !year.zero?
        day+=29 # leap year between 1901 and 1999
      else
	day+=28 # no leap year (incl. 1900)
      end
    else 
      day+=29 # leap year 2000
    end
  end

  day %= 7
	  
  month += 1
  if (month == 13) 
  	year += 1
	month = 1
  end
end
puts n_of_sundays
