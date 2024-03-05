require 'json'
require 'open-uri'
require_relative 'task1.rb'

RSpec.describe Cargo do
 
 it 'return right data' do
    allow_any_instance_of(Cargo).to receive(:calculate_distance).and_return(10.0)
    cargo = Cargo.new(10, 10, 10, 10, "Moscow", "Vladivostok")
    expect(cargo.calculate_price). to eq({:weight=>10.0, :length=>10.0, :width=>10.0, :height=>10.0, :distance=>10.0, :price=>10.0})
  end

  it 'api answer is nil' do
    cargo = Cargo.new(10,10,10,10, "Moscow", "Tokyo") # через море не возится =(
    expect(cargo.calculate_distance). to eq(0)
  end

  it 'return right distance' do
    cargo = Cargo.new(10,10,10,10,"Moscow", "Vladivostok")
    expect(cargo.calculate_distance). to eq(9021.7)
  end

end
