require 'rspec'          # searches the gem file path and grabs it.
require_relative 'car'   # gets the car, which is within the same folder.

describe 'Vehicle' do
    it 'has to be real' do
        expect{Vehicle.new}.to_not raise_error
    end
end

describe 'Car' do
    it 'has to be real' do
        expect{Car.new}.to_not raise_error
    end
    it 'has four wheels' do
        a_car = Car.new
        expect(a_car.wheels).to be_a Numeric
    end
    it 'can beep' do
        a_car = Car.new
        expect(a_car.horn).to be_a String
    end
    it 'has a year' do
        a_car = Car.new
        expect(a_car.year).to be_a Numeric
    end
    it 'light is off' do
        a_car = Car.new
        expect(a_car.checkLights).to be_falsey
    end
    it 'light is switched' do
        a_car = Car.new
        expect(a_car.switchLights).to be_truthy
    end
    it 'signal off' do
        a_car = Car.new
        expect(a_car.signal).to be_a String
    end
    it 'left signal on' do
        a_car = Car.new
        expect(a_car.leftSignal).to be_a String
    end
    it 'right signal on' do
        a_car = Car.new
        expect(a_car.leftSignal).to be_a String
    end
    it 'speed is zero' do
        a_car = Car.new
        expect(a_car.speed).to be_a Numeric
    end
    it 'accelerates' do
        a_car = Car.new
        expect(a_car.accelerate).to be_a Numeric
    end
    it 'decelerates' do
        a_car = Car.new
        expect(a_car.decelerate).to be_a Numeric
    end
    it 'shows all information' do
        a_car = Car.new
        expect(a_car.showInfo).to be_a String
    end
end

describe 'Toyota' do
    it 'has to be real' do
        expect{Toyota.new(2018, 7, 5)}.to_not raise_error
    end

    it 'can whoop' do
        a_toyota = Toyota.new(2018, 7, 5)
        expect(a_toyota.horn).to be_a String
    end

    it 'has a year' do
        a_toyota = Toyota.new(2018, 7, 5)
        expect(a_toyota.year).to be_a Numeric
    end
    it 'accelerates by 7' do
        a_toyota = Toyota.new(2018, 7, 5)
        expect(a_toyota.accelerate).to be_a Numeric
    end
    it 'decelerates by 5' do
        a_toyota = Toyota.new(2018, 7, 5)
        expect(a_toyota.decelerate).to be_a Numeric
    end
end

describe 'Tata' do
    it 'has to be real' do
        expect{Tata.new(2016,2,1.25)}.to_not raise_error
    end

    it 'can bep' do
        a_tata = Tata.new(2016,2,1.25)
        expect(a_tata.horn).to be_a String
    end

    it 'has a year' do
        a_tata = Tata.new(2016,2,1.25)
        expect(a_tata.year).to be_a Numeric
    end
    it 'accelerates by 2' do
        a_tata = Tata.new(2016,2,1.25)
        expect(a_tata.accelerate).to be_a Numeric
    end
    it 'decelerates by 1.25' do
        a_tata = Tata.new(2016,2,1.25)
        expect(a_tata.decelerate).to be_a Numeric
    end
end

describe 'Tesla' do
    it 'has to be real' do
        expect{Tesla.new(1990, 10, 7)}.to_not raise_error
    end

    it 'Beep-bee-bee-boop-bee-doo-weep' do
        a_tesla = Tesla.new(1990, 10, 7)
        expect(a_tesla.horn).to be_a String
    end

    it 'has a year' do
        a_tesla = Tesla.new(1990, 10, 7)
        expect(a_tesla.year).to be_a Numeric
    end
    it 'accelerates by 10' do
        a_tesla = Tesla.new(1990, 10, 7)
        expect(a_tesla.accelerate).to be_a Numeric
    end
    it 'decelerates by 7' do
        a_tesla = Tesla.new(1990, 10, 7)
        expect(a_tesla.decelerate).to be_a Numeric
    end
end

describe 'garage' do
    it 'exists' do
        expect{Garage.new}.to_not raise_error
    end

    it 'starts empty' do
        a_garage = Garage.new
        expect(a_garage.showCars.length).to be 0
    end

    it 'storing cars' do
        a_garage = Garage.new
        a_tesla = Tesla.new(1990, 10, 7)
        a_tata = Tata.new(2016,2,1.25)
        a_toyota = Toyota.new(2018, 7, 5)
        a_garage.store a_tesla
        a_garage.store a_tata
        a_garage.store a_toyota
        expect(a_garage.showCars.length).to be 3
    end
    it 'retrieve cars' do
        a_garage = Garage.new
        a_tesla = Tesla.new(1990, 10, 7)
        a_tata = Tata.new(2016,2,1.25)
        a_toyota = Toyota.new(2018, 7, 5)
        a_garage.store a_tesla
        a_garage.store a_tata
        a_garage.store a_toyota
        
        a_garage.retrieve a_tesla
        a_garage.retrieve a_tata
        a_garage.retrieve a_toyota
        expect(a_garage.showCars.length).to be 0
    end
end
