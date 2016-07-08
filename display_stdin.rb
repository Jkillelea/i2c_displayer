#!/usr/bin/ruby

require "SSD1306"
require "lib/argparser"

disp = SSD1306::Display.new

$FONT_SIZE = ArgParser::val_at_flag "--font"

while to_display = STDIN.gets do
  disp.println to_display
end



disp.font_size 1
disp.display!
