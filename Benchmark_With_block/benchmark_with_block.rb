
def benchmark
    # Your benchmarking code goes here.
    string_reversed=yield
    puts string_reversed
  end
   
  # Be careful, pasting this into IRB will take a long time to print.
  # It's a loooong string. :)
  long_string = "apple"*100000000
   
  running_time = benchmark { long_string.reverse }
  