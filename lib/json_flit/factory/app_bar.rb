module JsonFlit
  module Factory
    class AppBar
      def initialize(registry:, layout:, data:)

      end

      def build
        Flit::AppBarComponent.new
      end
    end
  end
end
