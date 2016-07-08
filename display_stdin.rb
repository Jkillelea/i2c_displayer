#!/usr/bin/ruby
require "SSD1306"
require "./lib/argparser"

disp = SSD1306::Display.new


fs = (ArgParser::val_at_flag( "--font")).to_i # get val at '--font' flag
begin
  if(fs >= 1 && fs <= 2 && fs.is_a?(Integer))   # must be either 1 or 2, and an int
    disp.font_size fs
  else                             # if it's not...
    raise "FONT SIZE OUT OF BOUNDS :: reverting to font size 1 (smallest)"
  end
rescue RuntimeError => raisedError # let me know
  disp.font_size 1
  STDERR.puts raisedError.message
end



while to_display = STDIN.getc do
  disp.print to_display
end

disp.display!
