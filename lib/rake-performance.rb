module Rake
  class Task
    alias :old_invoke :invoke

    def invoke(*args)
      puts "Task '#{@name}' started at #{Time.now}"
      old_invoke(args)
      puts "Task '#{@name}' ended at #{Time.now}"
    end
  end
end
