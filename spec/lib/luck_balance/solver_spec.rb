require "spec_helper"
describe Solver do
  let(:solver){ Solver.new(min_important, contests) }
  
  context "for test1" do 
  let(:contests){
    [
      [5, 1],
      [2, 1],
      [1, 1],
      [8, 1],
      [10, 0],
      [5, 0]
    ]
  }
  let(:min_important){ 3 }

  it "should be 29" do
    expect(solver.run).to eq 29
  end
  end

  context "for test 2" do
    let(:contests){
      [
        [8, 5],
        [13, 1],
        [10, 1],
        [9, 1],
        [8, 1],
        [13, 1],
        [12, 1],
        [18, 1],
        [13, 1]
      ]
    }
    let(:min_important){ 5 }
    it "should be 42" do
      expect(solver.run).to eq 42
    end
  end

  context "for test 3" do
    let(:contests){
"105 0
103 0
106 1
106 1
103 0
103 1
105 1
106 1
105 0
104 0
103 0
102 0
104 0
105 0
104 0
102 1
104 0
106 1
104 1
101 1
105 0
103 0
104 0
106 0
102 1
103 0
102 0
103 1
106 0
104 1
101 1
101 1
106 0
103 1
103 0
104 1
101 0
105 1
105 0
104 1
105 0
106 0
104 0
105 0
101 1
106 1
105 0
103 0
104 1
101 1
106 1
104 0
106 1
105 0
103 1
101 0
103 0
101 0
105 1
104 1
104 1
105 1
105 1
103 0
101 0
104 1
106 1
105 1
105 0
106 1
104 1
105 1
103 1
102 1
106 0
101 0
105 1
104 1
103 1
106 1
101 0
106 1
103 0
106 1
102 1
103 0
101 1
102 1
101 1
104 0
106 0
102 0
104 0
105 0
105 0
102 1
103 1".split("\n").map{|data| data.split(" ").map(&:to_i)  }
    }
    let(:min_important){ 58 }
    it "should be 10069" do
      expect(solver.run).to eq 10069
    end
  end
end
