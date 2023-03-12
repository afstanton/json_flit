module JsonFlit
  class Builder
    def initialize(registry:, layout:, data:)
      @registry = registry
      @layout = layout
      @data = data
    end

    def build
      builder = @registry.component(@layout['type'])
      component = builder.new(registry: @registry, layout: @layout, data: @data).build

      component
    end
  end
end
