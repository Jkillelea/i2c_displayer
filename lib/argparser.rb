module ArgParser

  def self.puts_args
    puts ARGV
  end

  def self.find_arg_val(flag) # returns the next after a specified flag string, such as "-t"
    return nil if ARGV.empty? # if there's no args, prevent returning of empty array

    ARGV.each_index do |index|
      if ARGV[index] == flag
        return ARGV[index+1]
      else
        return nil
      end
    end

  end

  def self.val_at_flag(flag) # just calls the function above
    find_arg_val(flag)
  end

end
