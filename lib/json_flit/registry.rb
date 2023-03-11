module JsonFlit
  class Registry
    DEFAULT_COMPONENT_LIST = {
      'align' => 'JsonFlit::Factory::Align',
      'animated_align' => 'JsonFlit::Factory::AnimatedAlign',
      'animated_container' => 'JsonFlit::Factory::AnimatedContainer',
      'animated_cross_fade' => 'JsonFlit::Factory::AnimatedCrossFade',
      'animated_default_text_style' => 'JsonFlit::Factory::AnimatedDefaultTextStyle',
      'animated_opacity' => 'JsonFlit::Factory::AnimatedOpacity',
      'animated_padding' => 'JsonFlit::Factory::AnimatedPadding',
      'animated_physical_model' => 'JsonFlit::Factory::AnimatedPhysicalModel',
      'animated_positioned' => 'JsonFlit::Factory::AnimatedPositioned',
      'animated_positioned_directional' => 'JsonFlit::Factory::AnimatedPositionedDirectional',
      'animated_size' => 'JsonFlit::Factory::AnimateSize',
      'animated_switcher' => 'JsonFlit::Factory::AnimatedSwitcher',
      'animated_theme' => 'JsonFlit::Factory::AnimatedTheme',
      'app_bar' => 'JsonFlit::Factory::AppBar',
      'aspect_ratio' => 'JsonFlit::Factory::AspectRatio',
      'asset_image' => 'JsonFlit::Factory::AssetImage',
      'base' => 'JsonFlit::Factory::Base',
      'baseline' => 'JsonFlit::Factory::Baseline',
      'button_bar' => 'JsonFlit::Factory::ButtonBar',
      'card' => 'JsonFlit::Factory::Card',
      'center' => 'JsonFlit::Factory::Center',
      'checkbox' => 'JsonFlit::Factory::Checkbox',
      'circular_progress_indicator' => 'JsonFlit::Factory::CircularProgressIndicator',
      'clip_oval' => 'JsonFlit::Factory::ClipOval',
      'clip_path' => 'JsonFlit::Factory::ClipPath',
      'clip_rect' => 'JsonFlit::Factory::ClipRect',
      'clip_rrect' => 'JsonFlit::Factory::ClipRrect',
      'column' => 'JsonFlit::Factory::Column',
      'comment' => 'JsonFlit::Factory::Comment',
      'conditional' => 'JsonFlit::Factory::Conditional',
      'container' => 'JsonFlit::Factory::Container',
      'cupertino_switch' => 'JsonFlit::Factory::CupertinoSwitch',
      'custom_scroll_view' => 'JsonFlit::Factory::CustomScrollView',
      'directionality' => 'JsonFlit::Factory::Directionality',
      'dropdown_button_form_field' => 'JsonFlit::Factory::DropdownButtonFormField',
      'dynamic' => 'JsonFlit::Factory::Dynamic',
      'elevated_button' => 'JsonFlit::Factory::ElevatedButton',
      'expanded' => 'JsonFlit::Factory::Expanded',
      'fitted_box' => 'JsonFlit::Factory::FittedBox',
      'flexible' => 'JsonFlit::Factory::Flexible',
      'floating_action_button' => 'JsonFlit::Factory::FloatingActionButton',
      'form' => 'JsonFlit::Factory::Form',
      'fractional_translation' => 'JsonFlit::Factory::FractionalTranslation',
      'fractionally_sized' => 'JsonFlit::Factory::FractionallySized',
      'gesture_detector' => 'JsonFlit::Factory::GestureDetector',
      'grid_view' => 'JsonFlit::Factory::GridView',
      'hero' => 'JsonFlit::Factory::Hero',
      'icon_button' => 'JsonFlit::Factory::IconButton',
      'icon' => 'JsonFlit::Factory::Icon',
      'ignore_pointer' => 'JsonFlit::Factory::IgnorePointer',
      'indexed_stack' => 'JsonFlit::Factory::IndexedStack',
      'ink_well' => 'JsonFlit::Factory::InkWell',
      'input_error' => 'JsonFlit::Factory::InputError',
      'interactive_viewer' => 'JsonFlit::Factory::InteractiveViewer',
      'intrinsic_height' => 'JsonFlit::Factory::IntrinsicHeight',
      'intrinsic_width' => 'JsonFlit::Factory::IntinsicWidth',
      'limited_box' => 'JsonFlit::Factory::LimitedBox',
      'linear_progress_indicator' => 'JsonFlit::Factory::LinearProgressIndidicator',
      'list_tile' => 'JsonFlit::Factory::ListTile',
      'list_view' => 'JsonFlit::Factory::ListView',
      'material' => 'JsonFlit::Factory::Material',
      'memory_image' => 'JsonFlit::Factory::MemoryImage',
      'network_image' => 'JsonFlit::Factory::NetworkImage',
      'offstage' => 'JsonFlit::Factory::Offstage',
      'opacity' => 'JsonFlit::Factory::Opacity',
      'outlined_button' => 'JsonFlit::Factory::OutlinedButton',
      'overflow_box' => 'JsonFlit::Factory::OverflowBox',
      'padding' => 'JsonFlit::Factory::Padding',
      'placeholder' => 'JsonFlit::Factory::Placeholder',
      'popup_menu_button' => 'JsonFlit::Factory::PopupMenuButton',
      'positioned' => 'JsonFlit::Factory::Positioned',
      'primary_scroll_container' => 'JsonFlit::Factory::PrimaryScrollContainer',
      'radio' => 'JsonFlit::Factory::Radio',
      'rich_text' => 'JsonFlit::Factory::RichText',
      'row' => 'JsonFlit::Factory::Row',
      'safe_area' => 'JsonFlit::Factory::SafeArea',
      'save_context' => 'JsonFlit::Factory::SaveContext',
      'scaffold' => 'JsonFlit::Factory::Scaffold',
      'scroll_configuration' => 'JsonFlit::Factory::ScrollConfiguration',
      'scrollbar' => 'JsonFlit::Factory::Scrollbar',
      'set_default_value' => 'JsonFlit::Factory::SetDefaultValue',
      'set_scroll_container' => 'JsonFlit::Factory::SetScrollContainer',
      'set_value' => 'JsonFlit::Factory::SetValue',
      'single_child_scroll_view' => 'JsonFlit::Factory::SingleChildScrollView',
      'sized_box' => 'JsonFlit::Factory::SizedBox',
      'sliver_grid' => 'JsonFlit::Factory::SliverGrid',
      'sliver_list' => 'JsonFlit::Factory::SliverList',
      'sliver_padding' => 'JsonFlit::Factory::SliverPadding',
      'sliver_to_box_adapter' => 'JsonFlit::Factory::SliverToBoxAdapter',
      'stack' => 'JsonFlit::Factory::Stack',
      'switch' => 'JsonFlit::Factory::Switch',
      'text_button' => 'JsonFlit::Factory::TextButton',
      'text' => 'JsonFlit::Factory::Text',
      'text_form_field' => 'JsonFlit::Factory::TextFormField',
      'theme' => 'JsonFlit::Factory::Theme',
      'tooltip' => 'JsonFlit::Factory::Tooltip',
      'tween_animation' => 'JsonFlit::Factory::TweenAnimation',
      'wrap' => 'JsonFlit::Factory::Wrap'
    }.freeze

    DEFAULT_METHOD_LIST = {

    }.freeze

    def initialize(override_internal_builders = false, override_internal_methods = false)
      @components = DEFAULT_COMPONENT_LIST.dup
      @methods = DEFAULT_METHOD_LIST.dup
    end

    def register_component(name, component)
      return if @components.key?(name) && !override_internal_builders
      @components[name] = component
    end

    def register_components(components)
      components.each do |name, component|
        register_component(name, component)
      end
    end

    def component(name)
      @components[name].constantize
    end

    def register_method(name, method)
      return if @methods.key?(name) && !override_internal_methods
      @methods[name] = method
    end

    def register_methods(methods)
      methods.each do |name, method|
        register_method(name, method)
      end
    end

    def method(name)
      @methods[name]
    end

  end
end
