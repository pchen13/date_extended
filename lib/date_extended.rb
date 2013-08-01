require "date_extended/version"
require 'date'
class Date
  def self.current_year
    Date.today.year
  end
  def self.first_friday(month, year = Date.today.year)
    day = Date.new(year, month, 1)
    day = day + ((day.wday - 5) % 7)
    day
  end
end
