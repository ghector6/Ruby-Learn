require_relative 'reverse-coordinates'

RSpec.describe Coordinates2 do
    context "Dada ua secuencia de numeros se espera obtener una cantidad de casas visitadas al menos una vez sin repetirse " do
        it "se epera la visita de 2 casas con la cadena >  " do
            test_nuestro = Coordinates2.new(">")
            expect(test_nuestro.route).to eq(2)
        end
        it "Se espera la visita de 4 casas con ^>v<" do
            test_nuestro2 = Coordinates2.new("^>v<")
            expect(test_nuestro2.route).to eq(4) 
        end
        it "Se espera la visita de 2 casas con el set siguiente ^v^v^v^v^v" do
            test_nuestro3 = Coordinates2.new("^v^v^v^v^v")
            expect(test_nuestro3.route).to eq(2)
        end        
    end

    context "Dada un cadena de instrucciones Santa y Robo_Santa alternaran para poder recorrer mas casas" do
        it "Se espera la visitia de 3 casas con el siguiente comando ^v" do
            test1_parte2 = Coordinates2.new("^v")
            expect(test1_parte2.robo_route).to eq(3)
        end
        it "Es espera la visita de 3 casa con el siguiente comando ^>v<" do
            test2_parte2 = Coordinates2.new("^>v<")
            expect(test2_parte2.robo_route).to eq(3)
        end

    end
    
end
  































