# Write your code here.
katz_deli = []

def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
      new_line= ["The line is currently:"]
        katz_deli.each_with_index{|person,idx| 
           new_line.push("#{idx+1}. #{person}")
      }
    puts new_line.join(" ")
    end
end

def take_a_number(katz_deli,person)
    katz_deli.push(person)
    line_size = katz_deli.length 
    puts "Welcome, #{person}. You are number #{line_size} in line."
end
    

def now_serving(katz_deli)
    #if katz_deli.length == 0
    if katz_deli.length> 0
        first_person=katz_deli[0]
        puts "Currently serving #{first_person}."
        katz_deli.shift 
    else
        puts "There is nobody waiting to be served!"
    end
end
