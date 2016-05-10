#!/usr/bin/env ruby

# i
# A command line tool for journals
# Author: Jim Fung
 
class ArgumentReader
  def initialize(input, log_path)
    @input = input
    @log_path = log_path
  end

  def to_s
    "#{Time.now} - #{@input.join(' ')}"
  end 

  def write_to_file
    File.open(File.expand_path(@log_path), 'a') do |f|
      f.puts to_s
   end   
  end
end

ArgumentReader.new(ARGV, '~/code/i/log.txt').write_to_file
