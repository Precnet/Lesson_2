# user inputs three numbers day, month, year
# outputs day number from the beginning of the year
# check year for leap

MONTHS_LENGTH_IN_DAYS_STANDARD_YEAR = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
MONTHS_LENGTH_IN_DAYS_LEAP_YEAR = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def create_year(day, month, year)
  {day: day, month: month, year: year}
end

def is_leap?(current_year)
  current_year[:year] % 4 == 0 && current_year[:year] % 100 != 0 && current_year[:year] % 400 != 0
end
