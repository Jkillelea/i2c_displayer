#!/usr/bin/ruby

require "SSD1306"
require "./lib/argparser"

disp = SSD1306::Display.new

disp.font_size (ArgParser::val_at_flag( "--font")).to_i 

while to_display = STDIN.getc do
  disp.print to_display
end



disp.display!
