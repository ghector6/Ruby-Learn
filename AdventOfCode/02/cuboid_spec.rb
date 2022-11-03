require_relative 'cuboid'

RSpec.describe Cuboid do
    context 'Given some meauserements calculate the area of a cuboid and area of the smaller side' do
        it 'Return the numbers from a text line' do 
            cuboid = Cuboid.new('2x3x4')
            expect(cuboid.getInteger).to eq([2,3,4])
        end
        it 'Returns the product multiplied by 2 and added to the smalles product all' do
            cuboid = Cuboid.new('2x3x4')
            expect(cuboid.getMaths).to eq(58)
        end
        it 'Returns the numbers from the text line 1x1x10' do
            cuboid = Cuboid.new('1x1x10')
            expect(cuboid.getInteger).to eq([1,1,10])
        end
        it 'Returns the product multiplied by 2 and added to the smalles product all 1x1x10 ' do
            cuboid = Cuboid.new('1x1x10')
            expect(cuboid.getMaths).to eq(43)
        end
    end
    context 'Find the size needed for the ribbon with the given instruction.' do
        it 'should return an array in order' do
            cuboid = Cuboid.new('2x3x4')
            expect(cuboid.getRibbon).to eq(34)
        end
    end
end
