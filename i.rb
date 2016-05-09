#!/usr/bin/env ruby

input = ARGV.join(' ')

File.open(File.expand_path('~/code/i/log.txt'), 'w') do |f|
  f << Time.now.to_s
  f << input
end
