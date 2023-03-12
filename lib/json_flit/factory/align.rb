module JsonFlit
  module Factory
    class Align
      def initialize(registry:, layout:, data:)

      end

      def build
        Flit::AlignComponent.new
      end
    end
  end
end
