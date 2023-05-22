class Person
    attr_accessor :name, :bank_account, :happiness, :hygiene
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end
    
    def happiness=(value)
      @happiness = value.clamp(0, 10)
    end
    
    def hygiene=(value)
      @hygiene = value.clamp(0, 10)
    end
    
    def clean?
      if hygiene > 7
        puts "#{name} is clean"
      else
        puts "#{name}, go take a shower"
      end
    end
    # linked with happiness
    def happy?
      if happiness > 7
        puts "#{name}, you should keep doing the happy things"
      else
        puts "#{name}, it's time to implement some habits to keep yourself smiling"
      end
    end

    # the get_paid 
    # linked with bank account
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    # taking a bath
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # working out
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    # Calling a Friend
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end
  
  person = Person.new("Bazenga")
  person.hygiene = 7
  puts person.hygiene
  
  person.hygiene = 12
  puts person.hygiene
  
  person.hygiene = -3
  puts person.hygiene
  
  # Output cleanliness
  person = Person.new("Benah")
  person.hygiene = 4
  person.clean?
# the happiness part
  person.happiness = 8
  person.happy?
# thee bank account
  puts person.bank_account
  person.get_paid(100)
  puts person.bank_account
  puts person.get_paid(50)
#   a bath
puts person.hygiene
puts person.take_bath
puts person.hygiene

# checking workout changes
puts person.happiness
puts person.hygiene
puts person.work_out

puts person.happiness
# (after incrementing by 2)

puts person.hygiene
# (after decrementing by 3)

# CHECKING WITH FRIENDS
stella = Person.new("Stella")
felix = Person.new("Felix")

puts stella.happiness
puts felix.happiness


puts stella.call_friend(felix)
#  Hi Felix! It's Stella. How are you?