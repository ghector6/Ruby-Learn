require_relative "lights"

RSpec.describe Lights do
	context "Given a set of instructions lights TURN ON " do
		it "turns all the lights on when receiving: turn on 0,0 through 999,999" do 
			grid = Lights.new
			expect(grid.instruction("turn on 0,0 through 999,999")).to eq(true)
			
		end
	end
end

	