class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
        @@all << self

    end

    def deposit(amount)
        self.balance += amount
        
    end

    def withdraw(amount)
        self.balance -= amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0
    end

    def close_account
        self.status = "closed"
    end
end
