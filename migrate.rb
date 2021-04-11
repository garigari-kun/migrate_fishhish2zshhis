require 'yaml'

File.open("fish_history", mode = "rt") do |f|
  f.each_line do |l|
    if l =~ /- cmd: /
      File.open("zsh_history", 'a') {|f| f.write(l[7..-1]) }
    end
  end
end
