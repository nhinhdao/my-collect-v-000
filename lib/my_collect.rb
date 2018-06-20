

def my_collect(array)
      i = 0
      newarray = []
      while i < array.length
            newarray << yield(array[i])
            i += 1
      end
      newarray
end

languages =  ['ruby', 'javascript', 'python', 'objective-c']
students =  ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']
puts my_collect(languages) {|name| name.upcase}
puts my_collect(students) {|name| name.split(" ").first}
