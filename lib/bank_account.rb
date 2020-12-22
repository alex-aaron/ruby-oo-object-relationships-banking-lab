class BankAccount

    attr_reader :name

    attr_accessor :deposit, :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if @status == "open" && self.balance > 0
            true
        else
            false
        end
    end

    def close_account
        self.balance = 0
        self.status = "closed"
    end


end
