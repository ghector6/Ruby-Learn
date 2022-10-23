require_relative 'elevator'

describe Elevator do
    context "Given a sequence of : ( = 1, ) = - 1: calculate which floor santa is at" do
        it "Given (()) it returns 0" do
            test1_day1_pt1 = Elevator.new("(())")
            expect(test1_day1_pt1.counter).to eq(0)
        end
        it "Given ()() it returns 0" do
            test2_day1_pt1 = Elevator.new("()()")
            expect(test2_day1_pt1.counter).to eq(0)
        end
        it "Given ((( it returns 3" do
            test3_day1_pt1 = Elevator.new("(((")
            expect(test3_day1_pt1.counter).to eq(3)
        end
        it "Given (()(()( it returns 3" do
            test4_day1_pt1 = Elevator.new("(()(()(")
            expect(test4_day1_pt1.counter).to eq(3)
        end
        it "Given ))((((( it returns 3" do
            test5_day1_pt1 = Elevator.new("))(((((")
            expect(test5_day1_pt1.counter).to eq(3)
        end
        it "Given ()) it returns -1" do
            test6_day1_pt1 = Elevator.new("())")
            expect(test6_day1_pt1.counter).to eq (-1)
        end
        it "Given ))( it returns -1" do
            test7_day1_pt1 = Elevator.new("))(")
            expect(test7_day1_pt1.counter).to eq(-1)
        end
        it "Given ))) it returns -3" do
            test8_day1_pt1 = Elevator.new(")))")
            expect(test8_day1_pt1.counter).to eq(-3)
        end
        it "Given )())()) it returns -3" do
            test9_day1_pt1 = Elevator.new(")())())")
            expect(test9_day1_pt1.counter).to eq(-3)
        end 
    end
    

end
