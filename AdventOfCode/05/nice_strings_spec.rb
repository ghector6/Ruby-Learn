require_relative 'nice_strings'

RSpec.describe Nice_Strings do
    
    context 'Given a string, say if it is nice or not' do
        it 'the string ugknbfddgicrmopn is nice' do
            test = Nice_Strings.new('ugknbfddgicrmopn')
            expect(test.nice?).to eq(true)
        end
        it 'the string aaa is nice' do
            test = Nice_Strings.new('aaa')
            expect(test.nice?).to eq(true)
        end
        it 'the string jchzalrnumimnmhp is naughty' do
            test = Nice_Strings.new('jchzalrnumimnmhp')
            expect(test.nice?).to eq(false)
        end
        it 'the string haegwjzuvuyypxyu is naughty' do
            test = Nice_Strings.new('haegwjzuvuyypxyu')
            expect(test.nice?).to eq(false)
        end 
        it'the string dvszwmarrgswjxmb is naughty' do
            test = Nice_Strings.new('dvszwmarrgswjxmb')
            expect(test.nice?).to eq(false)
        end
        
    end
    context 'Given a new set of rules it finds a nicer string' do
        it "returns a nicer  string with pair qjhvhtzxzqqjkmpb" do
            test = Nice_Strings.new("qjhvhtzxzqqjkmpb")
            expect(test.nicer?).to eq(true)
        end
        it "returns a nicer  string with pair qj12345678" do
            test = Nice_Strings.new("qj12345678")
            expect(test.nicer?).to eq(false)
        end
        it "Returns nicer with the same letter repeated after another one or the same" do 
            test =  Nice_Strings.new("xxyxx")
            expect(test.nicer?).to eq(true)
        end
    end
end                                                                