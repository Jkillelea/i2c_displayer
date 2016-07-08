#!/usr/bin/ruby

require "SSD1306"
require "./lib/argparser"

disp = SSD1306::Display.new

fs = (ArgParser::val_at_flag( "--font")).to_i
if fs >= 1 && fs <= 2
  disp.font_size fs
else
  disp.font_size 2 
end

while to_display = STDIN.getc do
  disp.print to_display
end



disp.display!
