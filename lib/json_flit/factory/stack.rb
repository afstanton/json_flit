module JsonFlit
  module Factory
    class Stack
      def initialize(registry:, layout:, data:)
      end

      def build
        Flit::StackComponent.new
      end

    end
  end
end
