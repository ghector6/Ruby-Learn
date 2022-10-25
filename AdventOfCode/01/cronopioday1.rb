class Elevator2
    def initialize(floor)
        @floor = floor.strip.split("") 
        @count = 0  
        @count_list = []    
    end

    def counter(direction)
        if direction == "("
            @count += 1
        elsif direction == ")"
            @count -= 1   
        end             
    end

    def floor
        @floor.each do |p|
            counter(p)
        end
        puts @count        
    end

    def basement
        @floor.each do |p|
            @count_list << counter(p)            
        end
        i = 0
        flag = 0
        until flag == -1
            flag = @count_list[i]
            i += 1
        end
        puts i                   
    end    
    
end

testinput = File.read("inputday1.txt")
floor = Elevator2.new(testinput)
floor.floor
cronopio = Elevator2.new(testinput)
cronopio.basement

 
 #cronopio.basement




