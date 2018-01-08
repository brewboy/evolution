require 'thread/promise'

module Bug
  module Brain
    class Consume < Pressure

      def get_promise_process_pair
        process = lambda do
          @promise = rand(2) == 1
        end

        return promise, process
      end
    end
  end
end
