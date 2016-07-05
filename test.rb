#!/usr/bin/env ruby -wKU

require "./lib/argparser.rb"

puts "args: #{ARGV}"

puts ArgParser::val_at_flag "-t"
