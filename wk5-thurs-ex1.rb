seating_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seat_checker(arr)
    i = 0
    imax = arr.length
    answer = nil
    begin
        j = 0
        print "\n"
        puts "Row #{i + 1}:"
        begin
            jmax = arr[i].length
            if arr[i][j] == nil
                while answer != 'y' && answer != 'n'
                    puts("Row #{i + 1} seat #{j + 1} is free.")
                    puts("Would you like to sit there? [y/n]")
                    print("> ")
                    answer = gets.chomp
                end
                if answer == 'y'
                    puts "What is your name?"
                    print "> "
                    name = gets.chomp
                    arr[i][j] = name
                end
                answer = nil
            end
            j +=1;
        end until j >= imax
            i +=1;
    end until i >= imax
    return arr
end

puts seat_checker(seating_chart)