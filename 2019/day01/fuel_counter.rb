class FuelCounter
    def self.fuel_by_mass(mass)
        one_third_of_mass = mass/3.0

        rounded_one_third_of_mass = one_third_of_mass.to_i
        return rounded_one_third_of_mass - 2
    end

    def self.fuel_for_fuel(fuel)
        total_fuel_for_fuel = 0
        current_fuel = fuel
    
        while current_fuel > 0
            current_fuel = fuel_by_mass(current_fuel)

            unless current_fuel < 0
                total_fuel_for_fuel += current_fuel
            end
        end

        return total_fuel_for_fuel
    end

    def self.sum_up_fuel_for_modules(modules)
        total_fuel = 0

        modules.each do |module_mass|
            module_needed_fuel = fuel_for_fuel(module_mass)
            total_fuel += module_needed_fuel
        end
        return total_fuel
    end
end

modules_masses =
    [60052, 61005, 114258, 66223, 114571, 80949, 129508, 94463,
    134331, 102634, 148109, 109532, 60479, 68048, 71553, 68053,
    51105, 149024, 138472, 57246, 85686, 121267, 144206, 104420,
    149858, 137795, 121637, 68877, 51560, 74506, 83362, 53806,
    132871, 100629, 76102, 103594, 68425, 54734, 124930, 120598,
    136375, 146892, 90876, 131455, 124377, 125244, 144563, 107469,
    86940, 132916, 79789, 136359, 105127, 82810, 83751, 107741,
    51677, 113598, 119741, 105174, 128151, 82407, 108461, 50594,
    92897, 146520, 56176, 68640, 124300, 88250, 132105, 89023,
    80532, 120433, 50015, 84028, 100491, 53131, 135920, 108820,
    98932, 109750, 136854, 126902, 108231, 109391, 136727, 128359,
    108575, 114594, 131466, 89977, 124467, 114318, 84544, 53584,
    87786, 131991, 138445, 70673]

puts FuelCounter.sum_up_fuel_for_modules(modules_masses)

#puts FuelCounter.fuel_for_fuel(1969)