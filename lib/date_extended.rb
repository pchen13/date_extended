require 'date'

class Date
  class << self
    def year
      Date.today.year
    end
    
    def month
      Date.today.month
    end
    
    def first_friday(month, year = Date.year)
      day = Date.new(year, month, 1)
      day = day + ((5 - day.wday) % 7)
    end
    
    def last_friday(month, year = Date.year)
      day = Date.new(year, month, -1)
      day - ((2 + day.wday) % 7)
    end
    
    def last_sunday(month, year = Date.year)
      day = Date.new(year, month, -1)
      day - day.wday 
    end
  end
end
