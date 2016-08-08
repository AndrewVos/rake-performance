require_relative 'time_helper'

module Rake
  class Task
    alias :old_invoke :invoke
    alias :old_invoke_with_call_chain :invoke_with_call_chain

    def invoke(*args)
      start_time = Time.now
      puts "Task '#{@name}' started at #{start_time}"
      old_invoke(*args)
      end_time = Time.now
      puts "Task '#{@name}' ended at #{end_time}"
      puts "Total time '#{@name}' took: #{TimeHelper.time_difference(start_time, end_time)}"
    end

    def invoke_with_call_chain(task_args, invocation_chain)
      start_time = Time.now
      puts "Task '#{@name}' with call chain started at #{start_time}"
      old_invoke_with_call_chain(task_args, invocation_chain)
      end_time = Time.now
      puts "Task '#{@name}' with call chain ended at #{end_time}"
      puts "Total time '#{@name}' with call chain took: #{TimeHelper.time_difference(start_time, end_time)}"
    end
  end
end
