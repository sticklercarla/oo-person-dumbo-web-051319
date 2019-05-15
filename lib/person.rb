# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account

    def happiness=(happiness)
        if happiness >= 10 
            @happiness = 10
        elsif happiness <= 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene >= 10 
            @hygiene = 10
        elsif hygiene <= 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def initialize(name)
        @name = name
        @bank_account = 25.00
        @happiness = 8.00
        @hygiene = 8.00
    end


    def happy?
        if self.happiness > 7
            true
        else
            false
        end

    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
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

    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

# binding.pry