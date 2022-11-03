class Cuboid 
    def initialize(line)
        @line = line.scan(/\d+/)
    end
    def line=(line)
        @line = line.scan(/\d+/)
    end

    def getInteger
        parsed_nums = @line.collect do |p|
            p.to_i
        end
        parsed_nums 
    end

      def getMaths
        area = getInteger.insert(-1,getInteger[0]).each_cons(2).map {|m| m.reduce(:*)}
        (area.sum * 2 ) + area.min
     end

     def getRibbon
        perimeter_arr = getInteger.sort
        perim = perimeter_arr[0]*2 + perimeter_arr[1]*2
        perim_ribbon = perimeter_arr.reduce(:*)
        total = perim + perim_ribbon
     end
     
     
     
end


if __FILE__ == $0
    input_lines = File.readlines('input.txt')

    present = Cuboid.new(input_lines.to_s)
    input_lines = input_lines.collect do |line|
    present.line = line
    present.getRibbon
    end
    p input_lines.reduce(:+)


end