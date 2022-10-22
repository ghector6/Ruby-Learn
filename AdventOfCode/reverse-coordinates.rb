class Coordinates2

    def initialize(movements)
        @movements = movements.split("")
        @visitedHomes = [[0,0]]
        @x = 0
        @y = 0
    end
    def instructions(direction)
        if direction == "^"
            @y += 1
        elsif direction == "v"
            @y -= 1
        elsif direction == ">"
            @x += 1
        elsif direction == "<"
            @x -= 1
        end
        return [@x,@y] 

    end

    def route
        @movements.each do |arrow|
            @visitedHomes << instructions(arrow)
        end
        @visitedHomes.uniq.size
    end

    def robo_route
        robo_santa = []
        santa = []
        @movements.each_with_index do |arrow, indx|
            if indx % 2 == 0 
                robo_santa << arrow
            else
                santa << arrow
            end
        end
        robo_santa.each do |arrow|
            @visitedHomes <<  instructions(arrow)
        end
        @x = 0
        @y = 0
        santa.each do |arrow|
            @visitedHomes << instructions(arrow)
        end
        return @visitedHomes.uniq.size()

    
end

if __FILE__ == $0
    input_chido = File.read("inputreverse.txt")
    test2 = Coordinates2.new(input_chido)
    puts test2.route
    
end