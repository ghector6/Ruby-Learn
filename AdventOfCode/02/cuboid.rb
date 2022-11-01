class Cuboid 
    def initialize(line)
        @line = line.scan(/\d+/)
    end

    def digits
        parsed_nums = @line.collect do |p|
            p.to_i
        end
        parsed_nums
               
    end
end



present = Cuboid.new("2x3x4")
puts present.digits