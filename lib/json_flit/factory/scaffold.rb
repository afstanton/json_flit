module JsonFlit
  module Factory
    class Scaffold
      def initialize(data:)
        @data = data
      end

      def build
        Flit::ScaffoldComponent.new(@data)
      end
    end
  end
end
