rake-performance
================

Simple performance timings for rake tasks.

Installation
------------

  gem install rake-performance

Usage
-----

  gem require 'rake_performance'

Example
-------

  task :do_something do
    puts "Hello, good Sir!"
    sleep(5)
  end

  =>

  Task 'dostuff' started at 2011-01-30 19:12:27 +0000
  hello good Sir!
  Task 'dostuff' ended at 2011-01-30 19:12:32 +0000
  Total time taken: 00:00:05

