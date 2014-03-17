require "pry-debugger"
require "./exercises.rb"

describe Exercises do
  it "triples a given string" do
    result = Exercises.ex0("brady")
    expect(result).to eq("bradybradybrady")
  end

  it "returns 'nope' if string == wishes" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end

  it "returns the number of elements in an array" do
    result = Exercises.ex1([1,2,3])
    expect(result).to eq(3)
  end

  it "returns the second element of an array" do
    result = Exercises.ex2(["Brady", "Bryan"])
    expect(result).to eq("Bryan")
  end

  it "returns the sub of the given array of numbers" do
    result = Exercises.ex3([1,2,3])
    expect(result).to eq(6)
  end

  it "returns the max number of given array" do
    result = Exercises.ex4([1,5,2,9,3])
    expect(result).to eq(9)
  end

  it "iterates through an array and puts each element" do
    expect(STDOUT).to receive(:puts).with("hello")
    expect(STDOUT).to receive(:puts).with("hi")
    expect(STDOUT).to receive(:puts).with("howdy")
    Exercises.ex5(["hello", "hi", "howdy"])
  end

  it "updates the last item in the array to 'panda'" do
    result = Exercises.ex6(["donkey", "rat"], "panda")
    expect(result).to eq(["donkey", "rat", "panda"])
  end

  it "updates last item of array to 'GDOZILLA' if last item is already 'panda'" do
    result = Exercises.ex6(["donkey", "rat", "panda"], "panda")
    expect(result).to eq(["donkey", "rat", "panda", "GODZILLA"])
  end

  it "checks if 'str' is includeded in an array and if so puts it at the end of the array" do
    result = Exercises.ex7(["John","Braden","Bryan"], "John")
    expect(result).to eq(["Braden", "Bryan", "John"])
  end

  it "iterates through array of hashes and prints name and ocupation" do
    expect(STDOUT).to receive(:puts).with("Bob: Builder")
    expect(STDOUT).to receive(:puts).with("Sponge Bob: Burger Chef")
    Exercises.ex8([{"Bob" => "Builder"}, {"Sponge Bob" => "Burger Chef"}])
  end

end


