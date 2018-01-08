require 'thread/promise'

module Bug
  module Brain
    class Pressure
      # class variables
      @@_all_pressures = Set.new

      def initialize
        @promise = Thread.promise
      end

      def get_promise_process_pair
        raise "This method should be overwritten in child classes."
      end

      class << self
        def extended(base)
          @@_all_pressures.add base
        end

        def pressure_classes
          @@_all_pressures.to_a
        end
      end
    end
  end
end