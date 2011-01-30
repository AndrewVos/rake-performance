require 'rake'
require 'rspec'
require 'stringio'
require File.join(File.dirname(__FILE__), "..", "lib", "rake-performance.rb")

task :do_something_useful do
  puts 'This is a rake task!'
end

describe "rake-performance" do
  def get_time_now
    @time_now_calls ||= 0
    time_now = Time.new(1983, 10, 23, 10, 10, 23) if @time_now_calls == 0
    time_now = Time.new(1983, 10, 23, 11, 11, 28) if @time_now_calls == 1
    @time_now_calls = @time_now_calls + 1
    time_now
  end

  before :each do
    task = Rake::Task[:do_something_useful]
    Time.stub(:now) { get_time_now }
    $stdout = StringIO.new
    task.invoke
    @output = $stdout.string
    task.reenable
  end

  it "displays the task start time" do
    @output.should include "Task \'do_something_useful\' started at 1983-10-23 10:10:23"
  end

  it "displays the task end time" do
    @output.should include "Task \'do_something_useful\' ended at 1983-10-23 11:11:28"
  end

  it "displays a the total time taken" do
    @output.should match /Total time taken: 3665000.0 milliseconds/
  end

  it "invokes the task" do
    @output.should include "This is a rake task!"
  end
end
