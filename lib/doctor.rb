class Doctor
  attr_accessor :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new(name)
    doctor = Doctor.new(name, self)
    self.doctors.last 
  end
end
