require_relative "ligths"

Rspec.describe Lights do
	context "Given a set of instructions lights TURN ON " do
		it "turns all the lights on when receiving: turn on 0,0 through 999,999" do 
			grid = Lights.new
			grid.instruction("turn on 0,0 through 999,999")
			resultado = grid.lights_on 
			expect(resultado).to eq(1000000)
		end
	end
end

	