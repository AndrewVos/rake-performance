require File.join(File.dirname(__FILE__), "..", "lib", "time_helper")

describe TimeHelper do
  describe ".time_difference" do
    def test_time_difference(time1, time2, expected_result)
      time1 = Time.new(1983, 10, 23, time1[0], time1[1], time1[2])
      time2 = Time.new(1983, 10, 23, time2[0], time2[1], time2[2])
      TimeHelper.time_difference(time1, time2).should == expected_result
    end

    it "displays the time difference for seconds" do
      test_time_difference([10, 10, 20], [10, 10, 40], "00:00:20")
    end

    it "displays the time difference for minutes" do
      test_time_difference([10, 5, 40], [10, 8, 40], "00:03:00")
    end

    it "displays the time difference for hours" do
      test_time_difference([5, 0, 0], [8, 0, 0], "03:00:00")
    end

    it "displays the time difference for hours, minutes and seconds" do
      test_time_difference([1, 1, 1], [4, 5, 6], "03:04:05")
    end
  end
end
