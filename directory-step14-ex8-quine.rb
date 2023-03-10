def print_file
  
  # $0 = filename being exacuted
  
  file = File.open($0, "r")
    file.readlines.each do |line|
      puts line
    end
  file.close
end

print_file