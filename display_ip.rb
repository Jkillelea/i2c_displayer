#!/usr/bin/ruby

require "socket"
require "SSD1306"
require "./lib/argparser.rb"

font_size = ArgParser::val_at_flag "--font"


disp = SSD1306::Display.new

unless font_size == nil
  disp.font_size == font_size
else
  disp.font_size == 1
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
