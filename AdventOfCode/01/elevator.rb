class Elevator
    def initialize(floor)
        @floor = floor.split("")       
    end

    def counter
        count = 0
        @floor.each do |p|
            if p == "(" 
                count += 1
            else
                count -= 1
            end           
        end
        count
    end
end

if __FILE__ == $0
    input_day1_pt1 = File.read("inputday1.txt")
    final_floor = Elevator.new(input_day1_pt1)
    puts final_floor.counter
else
    puts "Ejecutando desde las pruebas"
end