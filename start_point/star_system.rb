class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

    def planet_names()
      planets = @planets.map {|planet| planet.name}
      p planets
    end

    def get_planet_by_name(name)
        @planets.find do |a_planet|
        p a_planet if  a_planet.name == name
        end
    end

    def get_largest_planet()
      return @planets.max_by {|planet| planet.diameter}
    end

    def get_smallest_planet()
      return @planets.min_by {|planet| planet.diameter}
    end

    def plantes_with_no_mooons
      return @planets.find_all {|planet| planet.number_of_moons == 0}
    end





    
  end
