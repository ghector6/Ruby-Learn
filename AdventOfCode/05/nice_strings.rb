class Nice_Strings
    def initialize(strings)
        @strings = strings
        
    end

    def nice?
        #c1 = !!(@strings.match (/([aeiuo][^aeiou]*[aeiou][^aeiou]*[aeiou])/))
        c1 = (@strings.scan /[aeiou]/).size >= 3
        c2 = (@strings.match?  /([a-z])\1/ )
        c3 = !(@strings.match? /(ab)|(cd)|(pq)|(xy)/ )
        return c1 && c2 && c3
    end

    def nicer?
        nicer_pair = @strings.match? /([a-zA-Z][a-zA-Z]).*\1/
        divided_letter  = @strings.match? /([a-zA-Z])[a-zA-Z]\1/

        return nicer_pair && divided_letter


    end

    def counter(nice_list)
        nice_list = nice_list.collect do |string|
            @strings = string
            nice? ? 1:0
        end
        nice_list.sum
    end
    def nicer_counter(nice_list)
        nice_list = nice_list.collect do |string|
            @strings = string
            nicer? ? 1:0
        end
        nice_list.sum
    end
end
if __FILE__ == $0
    test1 = Nice_Strings.new("ugknbfddgicrmopnab")
    nice_list = File.readlines("inputday5.txt")
    #puts test1.counter(nice_list)
    puts test1.nicer_counter(nice_list)

    # puts nice.sum

    #puts test1.nice?
    #  class string
    #      def self.nice?
    #          a = self 
    #          #return false or true 
    #      end
    #  end

    # p "SOLOOAOSDKWAODW".nice? 

end