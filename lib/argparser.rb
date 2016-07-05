module ArgParser

  public
  def self.puts_args
    puts ARGV
  end

  public
  def self.find_arg_val(flag)
    ARGV.each_with_index do |arg, index|
      return ARGV[index+1] if arg == flag
    end
  end


end
