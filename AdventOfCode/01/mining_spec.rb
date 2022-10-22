require_relative 'mining'

RSpec.describe Mining do
    context "Dada una llave (secuencia de caracteres) encontrar el decimal que en conjunto arroje un MD5 con al menos 5 ceros como primeros valores" do
        it "Dada la llave abcdef encontrar 609043" do
            test_1_1 = Mining.new("abcdef")
            expect(test_1_1.num_finder).to eq(609043)
        end
        it "Dada la llave pqrstuv encontrar 1048970" do
            test_1_2 = Mining.new("pqrstuv")
            expect(test_1_2.num_finder).to eq(1048970)
        end
    end
end