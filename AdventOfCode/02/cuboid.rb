class Cuboid 
    def initialize(line)
        @line = line.scan(/\d+/)
        @parsed_nums = []
        @area = []

    end

    def getInteger
        @parsed_nums = @line.collect do |p|
            p.to_i
        end
        @parsed_nums 
    end

      def getMaths
        area = getInteger.insert(-1,getInteger[0]).each_cons(2).map {|m| m.reduce(:*)}
        p (area.sum * 2 ) + area.min
     end
end


if __FILE__ == $0
  present = Cuboid.new("2x3x4")
  present.getMaths
end