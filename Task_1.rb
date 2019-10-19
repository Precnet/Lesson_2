# Create Hash with months as keys ans days as values
# Output those with 30 days

MONTHS_NAMES = %w(january february march april may june july august september october novemner december)
MONTHS_LENGTH_IN_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def create_months
  MONTHS_NAMES.zip(MONTHS_LENGTH_IN_DAYS).to_h
end

def print_months_by_days(months, days_in_month = 30)
  months.each {|month| month if months[month] == days_in_month}
end
