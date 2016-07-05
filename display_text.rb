#!/usr/bin/ruby

require "SSD1306"

disp = SSD1306::Display.new

ARGV.each do |arg|
  disp.println arg
end

disp.font_size 1
disp.display!
