class Day < ActiveRecord::Base
  has_many :articles

  def self.now
    Date.today;
  end

  def self.time
    today = Date.today
  end

  def ordinal(number)
    abs_number = number.to_i.abs

    if (11..13).include?(abs_number % 100)
      "th"
    else
      case abs_number % 10
        when 1; "st"
        when 2; "nd"
        when 3; "rd"
        else    "th"
      end
    end
  end

  def ordinalize(number)
    "#{number}#{ordinal(number)}"
  end
end
