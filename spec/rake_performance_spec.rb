# require 'rake'
# require 'rspec'
# require 'stringio'
require 'spec_helper'

task :do_something_useful do
  puts 'This is a rake task!'
end

describe "rake-performance" do
  before :each do
    task = Rake::Task[:do_something_useful]
    Time.stub(:now).and_return Time.new(1983, 10, 23, 10, 10, 23), Time.new(1983, 10, 23, 10, 10, 24),
                               Time.new(1983, 10, 23, 11, 11, 27), Time.new(1983, 10, 23, 11, 11, 28)
    $stdout = StringIO.new
    task.invoke
    @output = $stdout.string
    task.reenable
  end

  it "displays the task start time" do
    @output.should include "Task \'do_something_useful\' started at 1983-10-23 10:10:23"
  end

  it "displays the task call chain start time" do
    @output.should include "Task \'do_something_useful\' with call chain started at 1983-10-23 10:10:24"
  end

  it "displays the task end time" do
    @output.should include "Task \'do_something_useful\' ended at 1983-10-23 11:11:28"
    end

  it "displays the task call chain end time" do
    @output.should include "Task \'do_something_useful\' with call chain ended at 1983-10-23 11:11:27"
  end

  it "displays a the total time taken" do
    @output.should include "Total time \'do_something_useful\' took: 01:01:05"
  end

  it "displays a the total time taken for task with call chain" do
    @output.should include "Total time \'do_something_useful\' with call chain took: 01:01:03"
  end

  it "invokes the task" do
    @output.should include "This is a rake task!"
  end
end
