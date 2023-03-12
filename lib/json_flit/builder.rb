module JsonFlit
  class Builder
    def initialize(registry:, layout:, data:)
      @registry = registry
      @layout = layout
      @data = data
    end

    def build(layout: @layout)
      builder = @registry.component(layout['type'])
      component = builder.new(data: @data).build
      if layout['children']
        layout['children'].each do |child|
          component.children << build(layout: child)
        end
      end

      if layout['child']
        component.child = build(layout: layout['child'])
      end

      component
    end

  end
end
