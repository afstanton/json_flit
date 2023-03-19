module JsonFlit
  module Factory
    class Scaffold
      def initialize(registry:, layout:, data:)
        args = layout['args']

        unless args['appBar'].nil?
          @app_bar = JsonFlit::Builder.new(registry: registry, layout: args['appBar'], data: data)
        end

        unless args['body'].nil?
          @body = JsonFlit::Builder.new(registry: registry, layout: args['body'], data: data)
        end
      end

      def build
        Flit::ScaffoldComponent.new(
          app_bar: @app_bar.nil? ? nil : @app_bar.build,
          body: @body.nil? ? nil : @body.build
        )
      end
    end
  end
end
