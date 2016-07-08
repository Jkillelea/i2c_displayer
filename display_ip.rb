#!/usr/bin/ruby
# Copyright Jacob Killelea <Jkillelea@protonmail.ch>

require "socket"
require "SSD1306"
require "./lib/argparser.rb"

$FONT_SIZE  = ArgParser::val_at_flag "--font"

disp = SSD1306::Display.new

unless $FONT_SIZE == nil
  disp.font_size $FONT_SIZE.to_i
else
  disp.font_size 2
end

ip = Socket.ip_address_list[1].ip_address
ip_array = ip.split "."
ip_array.each_with_index { |e, i|
  if i == 0
    disp.print "IP: "
  else
    disp.print "    "
  end
  disp.println e
}

disp.display!
