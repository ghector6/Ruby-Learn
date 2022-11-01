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
end