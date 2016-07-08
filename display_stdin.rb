#!/usr/bin/ruby
# Copyright Jacob Killelea <Jkillelea@protonmail.ch>
require "SSD1306"
require "./lib/argparser"

disp = SSD1306::Display.new

FONT_SIZE  = ArgParser::val_at_flag "--font"
if FONT_SIZE == nil
  disp.font_size = FONT_SIZE.to_i
else
  disp.font_size = 1
end


while to_display = STDIN.getc do
  disp.print to_display
end

disp.display!
