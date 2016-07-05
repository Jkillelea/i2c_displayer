#!/usr/bin/ruby

require "socket"
require "SSD1306"

disp = SSD1306::Display.new

disp.font_size 2
# disp.println "IP Address:"
# disp.print Socket.ip_address_list[1].ip_address
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
