# user inputs three numbers day, month, year
# outputs day number from the beginning of the year
# check year for leap

def create_year(day, month, year)
  {day: day, month: month, year: year}
end

def is_leap?(year)
  year[year] % 4 == 0 && year[year] % 100 != 0 && year[year] % 400 != 0
end
