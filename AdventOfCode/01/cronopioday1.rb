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
        @count = 0
    end

    def basement
        @floor.each do |p|
            @count_list << counter(p)            
        end
        p @count_list.size
        i = 0
        flag = 0
        until flag == -1
            flag = @count_list[i]
            i += 1
        end
        @count_list = []    
        @count = 0        
        puts i  
    end    
    
end

testinput = File.read("inputday1.txt")
floor = Elevator2.new(testinput)
floor2 = Elevator2.new(testinput)

cronopio = Elevator2.new(testinput)

floor2.basement
floor2.basement

 
 #cronopio.basement




