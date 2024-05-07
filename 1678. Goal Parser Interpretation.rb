command = "G()(al)"
# @param {String} command
# @return {String}
#*
def interpret(command)
    command.gsub("()","o").gsub("(al)","al")
end
p interpret(command)

#*
def interpret(command)
  result = ""
  i = 0
  
  while i < command.size
      if command[i] == "G"
          result << command[i]
      elsif command[i..i + 1] == "()"
          result << "o"
          i += 1
      elsif command[i..i + 3] == "(al)"
          result << "al"
          i += 3
      else
          next
      end
      i += 1
  end
  result
end
p interpret(command)


#* INTERSTING SOLUTIONS FORM OTHERS:
#*
def interpret(command)
  { '()' => 'o', '(al)' => 'al' }.each { |k, v| command.gsub!(k, v) }
  command
end
p interpret(command)

#* WORKING...
#* THIS WORKS IN JS NOT RUBY
def interpret(command)
  command.split("()").join("o").split("(al)").join("al")
end
p interpret(command)