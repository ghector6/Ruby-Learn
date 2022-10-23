require 'digest'
class Mining 
    def initialize(key)
        @key = key
    end

    def num_finder
        hashcode = ""
        i = -1
        until hashcode[0..4]=="00000"
            i += 1
            new_key = @key + i.to_s
            hashcode = Digest::MD5.hexdigest ( new_key)
        end
        i.to_i
    end
    def num_finder_II
        hashcode = ""
        i = -1
        until hashcode[0..5]=="000000"
            i += 1
            new_key = @key + i.to_s
            hashcode = Digest::MD5.hexdigest ( new_key)
        end
        i.to_i
    end
        

end

if __FILE__ == $0
    finder = Mining.new("ckczppom")
    p finder.num_finder_II
end