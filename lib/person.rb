# your code goes here
class Person
    attr_accessor :balance, :happiness, :hygiene 
    attr_reader :name
  
    def initialize(name, balance = 25, happiness = 8, hygiene = 8)
      @name = name
      @balance = balance
      @happiness = happiness
      @hygiene = hygiene
      puts @name
    end
  
    def bank_account(balance)
      @balance = balance
    end
  
    def happiness=(value)
        @happiness = if value > 10
                       10
                     elsif value < 0
                       0
                     else
                       value
                     end
    end
    
    def hygiene=(value)
        @hygiene = if value > 10
                     10
                   elsif value < 0
                     0
                   else
                     value
                   end
    end

    def happy?
        happiness > 7
      end
    
      def clean?
        hygiene > 7
      end
    
      def get_paid(amount)
        self.balance += amount
        "all about the benjamins"
      end
    
      def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
    
      def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
      end
    
      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
    
      def start_conversation(person, topic)
        case topic
        when "politics"
          [self, person].each { |p| p.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, person].each { |p| p.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end

  end
  
  snoop = Person.new("Snoop", 34, -2, 15)
  
  

puts snoop.name 
puts snoop.balance
puts snoop.happiness


