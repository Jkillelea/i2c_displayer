# Copyright Jacob Killelea <Jkillelea@protonmail.ch>
module ArgParser

  def self.puts_args
    puts ARGV
  end

  def self.find_arg_val(flag)  # returns the next after a specified flag string, such as "-t"
    return nil if ARGV.empty?  # if there's no args, prevent returning of empty array
    ARGV.each_index do |index| # otherwise look for the arg
      if ARGV[index] == flag   # if it's found, return the next thing (which, by convention, is the associated value)
        return ARGV[index+1]
      else
        return nil
      end
    end
  end

  def self.val_at_flag(flag) # just calls the function above
    find_arg_val(flag)
  end

 def self.given_flag?(flag)
   ARGV.each do |arg|
     if arg == flag
       return true
     else
       return false
     end
   end
 end
 alias_method :given_arg? :given_flag?
 alias_method :arg_given? :given_flag?

end
