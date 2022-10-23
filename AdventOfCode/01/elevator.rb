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
    final_floor = Elevator.new("(())")
    puts final_floor.counter
else
    puts "Ejecutando desde las pruebas"
end