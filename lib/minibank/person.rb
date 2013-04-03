module Minibank
  class Person
    attr_accessor :name, :surname
    attr_reader :id

    def initialize(name, surname)
      @name, @surname = name, surname
      @id = generate_id
    end

    def to_s
      "[#{id}] #{name} #{surname}"
    end

    protected
      def generate_id
        rand 1_000_000
      end
  end
end
