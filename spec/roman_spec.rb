require 'roman'

describe Numerals do


context "Checking set up values" do

#  before(:each) do
#    numerals = Numerals.new
#  end

#Add double for number here


  it 'should return key numeral values' do
  expect(subject.key_numerals).to eq(
  {1 => "I",
  5 =>  "V",
  10 =>  "X",
  50 =>  "L",
  100 => "C",
  500 => "D",
  1000 => "M"}
  )

end
  it 'should split the numbers into an array' do
    expect(subject.digits).to be_a(Array)
end

end

context "Calculating numerals" do


it "should should calculate a number of I's to add" do
  #(number = double778)
  expect(subject.number_of_i).to include("I")
end

it "should respond to number of V's" do
  #(:number) {double ():number)}.with value(778)
  subject.number
  expect(subject).to respond_to(:number_of_v)
end

it "should should calculate a number of V's to add" do
  #(:number).to eq(778)
  subject.number
  expect(subject.number_of_v).to include("V")
end


it "should should calculate a number of X's to add" do
  #(:number).to eq(778)
  subject.number
  expect(subject.number_of_v).to include("V")
end

it "should should calculate a number of L's to add" do
  #(:number).to eq(778)
  subject.number
  expect(subject.number_of_l).to include("L")
end

it "should should calculate a number of C's to add" do
  #(:number).to eq(778)
  subject.number
  expect(subject.number_of_c).to include("C")
end


#it "should should calculate a number of V's to add" do
#    expect(subject.number_of_x).to include("X")
#end

end

end
