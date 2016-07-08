#!/usr/bin/ruby

require "SSD1306"
require "./lib/argparser"

disp = SSD1306::Display.new

FONT_SIZE = ArgParser::val_at_flag "--font"
disp.font_size FONT_SIZE

while to_display = STDIN.getc do
  disp.print to_display
end



disp.display!
