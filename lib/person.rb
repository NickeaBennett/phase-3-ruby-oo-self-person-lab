# your code goes here
class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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
    
    def happiness=(value)
        @happiness = if value > 10
                        10
                    elsif value < 0
                        0
                    else
                        value
                    end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
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
    end
end