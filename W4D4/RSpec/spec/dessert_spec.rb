require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:type) { double("cake") }
  let(:quantity) { double(20) }
  subject(:cake) { Dessert.new(type, quantity, chef) }

  describe "#initialize" do
    it "sets a type" do
    expect(cake.type).to eq("cake")
    end
    it "sets a quantity" do
    expect(cake.quantity).to eq(20)
    end
    it "starts ingredients as an empty array" do
    expect(cake.ingredients).to eq.empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cake", "five", "chef" )}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cake.ingredients).to_not include('sugar')
      cake.add_ingredient('sugar')
      expect(cake.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cake.ingredients).to eq(["milk", "sugar", "chocolate"])
      cake.mix!
      expect(cake.ingredients).to eq(["sugar", "chocolate", "milk"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(5)
      expect(cake.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {cake.eat(30)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(chef).to receive()
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
