module Minibank
  class Client
    attr_reader :person, :accounts

    def initialize(person)
      @person = person
      @accounts = []
    end

    def total_balance
      return 0 if @accounts.empty?
      balances = @accounts.map { |account| account.balance }
      balances.inject { |total, balance| total + balance }
    end

    def vip?
      total_balance >= 100_000
    end
  end
end
