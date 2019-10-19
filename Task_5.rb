# user inputs three numbers day, month, year
# outputs day number from the beginning of the year
# check year for leap

DAYS_PER_MONTH_STANDARD = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
DAYS_PER_MONTH_LEAP = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def create_year(day, month, year)
  {day: day, month: month, year: year}
end

def is_leap?(current_year)
  current_year[:year] % 4 == 0 && current_year[:year] % 100 != 0 && current_year[:year] % 400 != 0
end

def get_ordinal_number_of_day(year, day)
  days_per_month = DAYS_PER_MONTH_LEAP ? is_leap?(year[:year]) : DAYS_PER_MONTH_STANDARD
  get_ordinal(year[:day], year[:month], days_per_month)
end

def get_ordinal(day, month, days_per_month)
  day + days_per_month[0..month-1].sum
end
