#!/usr/bin/env ruby -wKU

require "./lib/argparser.rb"

puts "args: #{ARGV}"
puts "val:  #{ArgParser::val_at_flag "-t"}"
puts "insp: #{ArgParser::val_at_flag("-t").inspect}"
