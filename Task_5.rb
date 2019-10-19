# user inputs three numbers day, month, year
# outputs day number from the beginning of the year
# check year for leap

DAYS_PER_MONTH_STANDARD = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
DAYS_PER_MONTH_LEAP = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def get_user_input
  print 'Input day: '
  day = gets.chomp.to_i
  print 'Input month: '
  month = gets.chomp.to_i
  print 'Input year: '
  year = gets.chomp.to_i
  create_year(day, month, year)
end

def create_year(day, month, year)
  {day: day, month: month, year: year}
end

def is_leap?(current_year)
  current_year % 4 == 0 && current_year % 100 != 0 && current_year % 400 != 0
end

def get_ordinal_number_of_date(year)
  days_per_month = is_leap?(year[:year]) ? DAYS_PER_MONTH_LEAP : DAYS_PER_MONTH_STANDARD
  # -1 for index translation, -1 for previous month
  month_index = year[:month] - 2
  year[:day] + calculate_previous_months_sum(month_index, days_per_month)
end

def calculate_previous_months_sum(month_index, days_per_month)
  case
  when month_index < 0
    0
  when month_index == 0
    days_per_month[month_index]
  else
    days_per_month[0..month_index].sum
  end
end

p get_ordinal_number_of_date(get_user_input)
