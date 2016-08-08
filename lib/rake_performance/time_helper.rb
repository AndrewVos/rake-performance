class TimeHelper
  class << self
    def time_difference(a, b)
      a, b = b, a if a < b
      seconds = a - b
      minutes, seconds = *seconds.divmod(60)
      hours,   minutes = *minutes.divmod(60)
      seconds = seconds.round
      result = [hours, minutes, seconds].map { |value| value.to_s.rjust(2, "0") }
      result.join(":")
    end
  end
end
