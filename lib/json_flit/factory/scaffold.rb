module JsonFlit
  module Factory
    class Scaffold
      def initialize(registry:, layout:, data:)
        args = layout['args']

        @app_bar = JsonFlit::Builder.new(registry: registry, layout: args['appBar'], data: data)
        @body = JsonFlit::Builder.new(registry: registry, layout: args['body'], data: data)
      end

      def build
        Flit::ScaffoldComponent.new(
          app_bar: @app_bar.build,
          body: @body.build
        )
      end
    end
  end
end
