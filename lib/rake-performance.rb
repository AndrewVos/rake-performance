module Rake
  class Task
    alias :old_invoke :invoke

    def invoke(*args)
      start_time = Time.now
      puts "Task '#{@name}' started at #{start_time}"
      old_invoke(args)
      end_time = Time.now
      puts "Task '#{@name}' ended at #{end_time}"
      puts "Total time taken: #{(end_time - start_time) * 1000} milliseconds"
    end
  end
end
