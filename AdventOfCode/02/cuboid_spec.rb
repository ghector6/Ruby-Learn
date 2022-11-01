require_relative 'cuboid'

RSpec.describe Cuboid do
    context 'Given some meauserements calculate the area of a cuboid and area of the smaller side' do
        it 'Return the numbers from a text line' do 
            cuboid = Cuboid.new('2x3x4')
            expect(cuboid.getInteger).to eq([2,3,4])
        end
    end
end
