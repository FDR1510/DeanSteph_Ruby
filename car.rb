class Vehicle

end
    class Car < Vehicle
        def initialize (year = 0, accelerate = 0, decelerate = 0)
            @wheels = 4
            @horn = "BEEP!"
            @year = year
            @signal = "Signal is off"
            @checkLights = false
            @speed = 0
            @accelerate = accelerate
            @decelerate = decelerate


        end

        def horn
            @horn
        end

        def wheels
            @wheels
        end

        def year
            @year
        end

        def checkLights
            @checkLights
        end

        def switchLights
            @checkLights = !@checkLights
        end

        def leftSignal
            @signal = "left turn!"
        end

        def rightSignal
            @signal = "right turn!"
        end

        def signal
            @signal
        end

        def speed
            @speed
        end

        def accelerate
            @speed += @accelerate
        end

        def decelerate
            @speed -= @decelerate
        end

        def showInfo
        p  "#{@wheels} #{@horn}, #{@year}, #{@signal}, #{@checkLights}, #{@speed}, #{@accelerate},#{@decelerate}"
        end
    end

        class Garage
            def initialize
                @cars = []
            end

            def store (carName)
                @cars << carName
            end

            def showCars
                @cars
            end

            def retrieve (carName)
                # cars = @cars
                # p cars
                # cars -= [carName]
                # p cars
                # @cars = cars
                #
                # @cars -= [carName]
                @cars -= [carName]

            end
        end

        class Toyota < Car
            def initialize (year, accelerate, decelerate)
            super
                @horn = "whoop"

            end
        end

        class Tata < Car
            def initialize (year, accelerate, decelerate)
                super
                    @horn = "bep"

                end
        end

        class Tesla < Car
            def initialize (year, accelerate, decelerate)
                super
                    @horn = "Beep-bee-bee-boop-bee-doo-weep"
                end
        end

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
