require 'rspec'

describe "rake-performance" do
  before :each do
    rakefile = File.expand_path(File.join(File.dirname(__FILE__), "..", "Rakefile"))
    @output = `rake -f #{rakefile} do_something_useful`
  end

  it "displays the task start time" do
    @output.should include "Task \'do_something_useful\' started at #{Time.now.to_s}"
  end

  it "displays the task end time" do
    @output.should include "Task \'do_something_useful\' ended at #{Time.now.to_s}"
  end
end
