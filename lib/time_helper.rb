class TimeHelper
  class << self
    def time_difference(a, b)
      a, b = b, a if a < b
      difference = Integer(a - b)
      seconds = difference % 60
      difference = (difference - seconds) / 60
      minutes = difference % 60
      difference = (difference - minutes) / 60
      hours =  difference % 24
      result = [hours, minutes, seconds].map { |value| value.to_s.rjust(2, "0") }
      result.join(":")
    end
  end
end
