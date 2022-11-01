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
        # if ((@strings.scan /[aeiou]/).size >=3) && (@strings.match /([a-z])\1/ )
        #     puts "pretty string"
        # end
        # if 
        #     puts "cumple 2"
        # end
        # if (@strings.match /(ab)|(cd)|(pq)|(xy)/ )
        #     puts "no cumple 3"
        # else
        #     puts "cumple 3"
        # end
        
        
    
    end      
    
end
if __FILE__ == $0
    test1 = Nice_Strings.new("ugknbfddgicrmopnab")
    puts test1.nice?
    #  class string
    #      def self.nice?
    #          a = self 
    #          #return false or true 
    #      end
    #  end

    # p "SOLOOAOSDKWAODW".nice? 

end