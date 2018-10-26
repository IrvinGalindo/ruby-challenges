class Campaing
  attr_accessor :start_date
  attr_accessor :end_date
  attr_accessor :limit_of_pets
  attr_accessor :limit_range
  attr_accessor :cost
  attr_accessor :incharge
  attr_accessor :place_of_campaing
  attr_accessor :type_of_campaing

  def initialize(start_date, end_date, place_of_campaing, type_of_campaing)
    @start_date = start_date
    @end_date = end_date
    @place_of_campaing = place_of_campaing
    @type_of_campaing = type_of_campaing
  end

  def what_type?(pet)
    puts "Check what type of pet (pet.type) is it, depending of the type of pet calls the method is_candidate?(pet, lower_limit, upper_limit)"
    is_candidate?(pet, @limit_of_pets)
  end

  def is_candidate?(pet, limit_of_pets)
    puts "Validate if the age of the pet (pet.age) is into the both limits, then call decrement_limit: If the age is not into the range.
    send the message: The pet cant be sterilization"
    decrement_limit!(pet)
  end

  def decrement_limit!(pet)
    puts "validate if the every limit_of_pet variable is not 0, if It is not 0, decrement the variable and call the method add_pet!(pet)
        If It is 0, show the message: The limit of this pet is full. Or something like that."
  end

  def add_pet!(pet)
    puts "Add the new pet on the DB"
  end
end

class Pet
  attr_accessor :type
  attr_accessor :gender
  attr_accessor :age
  attr_accessor :weight
  attr_accessor :owner
end

class User
  attr_accessor :nick_name
  attr_reader :password
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :type
  attr_accessor :certification

  def initialize(nick_name, password, first_name, last_name, type)
    @nick_name = nick_name
    @password = password
    @first_name = first_name
    @last_name = last_name
    @type = type
  end
end

sterilization_campaing = Campaing.new("26-10-18 8:00", "26-10-18 9:00", "Sport City", "Sterilization")
sterilization_campaing.limit_of_pets = {"dog" => 80, "cat" => 30}
sterilization_campaing.limit_range = {"dog" => [{"upper" => 6}, {"lowwer" => 24}]}
sterilization_campaing.what_type?(:dog)
puts sterilization_campaing.limit_range
