module Bug
  module Brain
    class Produce < Pressure

      def get_promise_process_pair
        process = lambda do
          @promise = rand(2) == 0
        end

        return promise, process
      end
    end
  end
end
