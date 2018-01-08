require 'thread/pool'

module Bug
  module Brain
    class Processor

      def initialize
        @pool = Thread.pool 4
      end

      def process(*args, &block)
        @pool.process args, block
      end

    end
  end
end