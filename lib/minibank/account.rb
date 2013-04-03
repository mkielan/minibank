module Minibank
  class Account
    attr_reader :id, :currency, :balance

    def initialize(balance=0, currency='$')
      @balance, @currency = balance, currency
      @id = generate_id
    end

    def to_s
      "[#{id}] #{currency}#{balance}"
    end

    protected
      def generate_id
        rand 1_000_000
      end
  end
end
