require_relative 'time_helper'

module Rake
  class Task
    alias :old_invoke :invoke

    def invoke(*args)
      start_time = Time.now
      puts "Task '#{@name}' started at #{start_time}"
      old_invoke(args)
      end_time = Time.now
      puts "Task '#{@name}' ended at #{end_time}"
      puts "Total time taken: #{TimeHelper.time_difference(start_time, end_time)}" 
    end
  end
end
