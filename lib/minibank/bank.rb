module Minibank
  class Bank
    def self.open_account(client, balance=0, currency='$')
      client.accounts << Account.new(balance, currency)
    end
  end
end
