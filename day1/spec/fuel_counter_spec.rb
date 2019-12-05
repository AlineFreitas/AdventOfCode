require_relative '../fuel_counter'

RSpec.describe "Fuel Counter" do

    context "Calculate fuel by mass" do

        it "returns 2 when mass is 12" do
    
            # Given
            mass = 12
    
            # When
            needed_fuel = FuelCounter.fuel_by_mass(mass)
    
            # Then
            expect(needed_fuel).to eq(2)
        end
    
        it "returns 2 when mass is 14" do
    
            # Given
            mass = 14
    
            # When
            needed_fuel = FuelCounter.fuel_by_mass(mass)
    
            # Then
            expect(needed_fuel).to eq(2)
        end
    
        it "returns 654 when fuel is 1969" do
            # Given
            mass = 1969
            
            # When
            needed_fuel = FuelCounter.fuel_by_mass(mass)
    
            # Then
            expect(needed_fuel).to eq(654)
        end
    
        it "returns 33583 when fuel is 100756" do

            # Given
            mass = 100756
        
            # When
            needed_fuel = FuelCounter.fuel_by_mass(mass)
    
            # Then
            expect(needed_fuel).to eq(33583)
        end
    end

    context "Calculate fuel for the fuel, by mass" do
        it "returns 2 when mass is 12" do
    
            # Given
            mass = 12
    
            # When
            needed_fuel = FuelCounter.fuel_for_fuel(mass)
    
            # Then
            expect(needed_fuel).to eq(2)
        end
    
        it "returns 2 when mass is 14" do
            # Given
            mass = 14
    
            # When
            needed_fuel = FuelCounter.fuel_for_fuel(mass)
    
            # Then
            expect(needed_fuel).to eq(2)
        end
    
        it "returns 966 when fuel is 1969" do

            # Given
            mass = 1969
            
            # When
            needed_fuel = FuelCounter.fuel_for_fuel(mass)
    
            # Then
            expect(needed_fuel).to eq(966)
        end
    
        it "returns 50346 when fuel is 100756" do

            # Given
            mass = 100756
        
            # When
            needed_fuel = FuelCounter.fuel_for_fuel(mass)
    
            # Then
            expect(needed_fuel).to eq(50346)
        end
    end
end