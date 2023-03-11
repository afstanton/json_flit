module JsonFlit
  class Registry
    DEFAULT_COMPONENT_LIST = {
      'align' => 'Flit::AlignComponent',
      'animated_align' => 'Flit::AnimatedAlignComponent',
      'animated_container' => 'Flit::AnimatedContainerComponent',
      'animated_cross_fade' => 'Flit::AnimatedCrossFadeComponent',
      'animated_default_text_style' => 'Flit::AnimatedDefaultTextStyleComponent',
      'animated_opacity' => 'Flit::AnimatedOpacityComponent',
      'animated_padding' => 'Flit::AnimatedPaddingComponent',
      'animated_physical_model' => 'Flit::AnimatedPhysicalModelComponent',
      'animated_positioned' => 'Flit::AnimatedPositionedComponent',
      'animated_positioned_directional' => 'Flit::AnimatedPositionedDirectionalComponent',
      'animated_size' => 'Flit::AnimateSizeComponent',
      'animated_switcher' => 'Flit::AnimatedSwitcherComponent',
      'animated_theme' => 'Flit::AnimatedThemeComponent',
      'app_bar' => 'Flit::AppBarComponent',
      'aspect_ratio' => 'Flit::AspectRatioComponent',
      'asset_image' => 'Flit::AssetImageComponent',
      'base' => 'Flit::BaseComponent',
      'baseline' => 'Flit::BaselineComponent',
      'button_bar' => 'Flit::ButtonBarComponent',
      'card' => 'Flit::CardComponent',
      'center' => 'Flit::CenterComponent',
      'checkbox' => 'Flit::CheckboxComponent',
      'circular_progress_indicator' => 'Flit::CircularProgressIndicatorComponent',
      'clip_oval' => 'Flit::ClipOvalComponent',
      'clip_path' => 'Flit::ClipPathComponent',
      'clip_rect' => 'Flit::ClipRectComponent',
      'clip_rrect' => 'Flit::ClipRrectComponent',
      'column' => 'Flit::ColumnComponent',
      'comment' => 'Flit::CommentComponent',
      'conditional' => 'Flit::ConditionalComponent',
      'container' => 'Flit::ContainerComponent',
      'cupertino_switch' => 'Flit::CupertinoSwitchComponent',
      'custom_scroll_view' => 'Flit::CustomScrollViewComponent',
      'directionality' => 'Flit::DirectionalityComponent',
      'dropdown_button_form_field' => 'Flit::DropdownButtonFormFieldComponent',
      'dynamic' => 'Flit::DynamicComponent',
      'elevated_button' => 'Flit::ElevatedComponent',
      'expanded' => 'Flit::ExpandedComponent',
      'fitted_box' => 'Flit::FittedBoxComponent',
      'flexible' => 'Flit::FlexibleComponent',
      'floating_action_button' => 'Flit::FloatingActionButtonComponent',
      'form' => 'Flit::FormComponent',
      'fractional_translation' => 'Flit::FractionalTranslationComponent',
      'fractionally_sized' => 'Flit::FractionallySizedComponent',
      'gesture_detector' => 'Flit::GestureDetectorComponent',
      'grid_view' => 'Flit::GridViewComponent',
      'hero' => 'Flit::HeroComponent',
      'icon_button' => 'Flit::IconButtonComponent',
      'icon' => 'Flit::IconComponent',
      'ignore_pointer' => 'Flit::IgnorePointerComponent',
      'indexed_stack' => 'Flit::IndexedStackComponent',
      'ink_well' => 'Flit::InkWellComponent',
      'input_error' => 'Flit::InputErrorComponent',
      'interactive_viewer' => 'Flit::InteractiveViewerComponent',
      'intrinsic_height' => 'Flit::IntrinsicHeightComponent',
      'intrinsic_width' => 'Flit::IntinsicWidthComponent',
      'limited_box' => 'Flit::LimitedBoxComponent',
      'linear_progress_indicator' => 'Flit::LinearProgressIndidicatorComponent',
      'list_tile' => 'Flit::ListTileComponent',
      'list_view' => 'Flit::ListViewComponent',
      'material' => 'Flit::MaterialComponent',
      'memory_image' => 'Flit::MemoryImageComponent',
      'network_image' => 'Flit::NetworkImageComponent',
      'offstage' => 'Flit::OffstageComponent',
      'opacity' => 'Flit::OpacityComponent',
      'outlined_button' => 'Flit::OutlinedButtonComponent',
      'overflow_box' => 'Flit::OverflowBoxComponent',
      'padding' => 'Flit::PaddingComponent',
      'placeholder' => 'Flit::PlaceholderComponent',
      'popup_menu_button' => 'Flit::PopupMenuButtonComponent',
      'positioned' => 'Flit::PositionedComponent',
      'primary_scroll_container' => 'Flit::PrimaryScrollContainerComponent',
      'radio' => 'Flit::RadioComponent',
      'rich_text' => 'Flit::RichTextComponent',
      'row' => 'Flit::RowComponent',
      'safe_area' => 'Flit::SafeAreaComponent',
      'save_context' => 'Flit::SaveContextComponent',
      'scaffold' => 'Flit::ScaffoldComponent',
      'scroll_configuration' => 'Flit::ScrollConfigurationComponent',
      'scrollbar' => 'Flit::ScrollbarComponent',
      'set_default_value' => 'Flit::SetDefaultValueComponent',
      'set_scroll_container' => 'Flit::SetScrollContainerComponent',
      'set_value' => 'Flit::SetValueComponent',
      'single_child_scroll_view' => 'Flit::SingleChildScrollViewComponent',
      'sized_box' => 'Flit::SizedBoxComponent',
      'sliver_grid' => 'Flit::SliverGridComponent',
      'sliver_list' => 'Flit::SliverListComponent',
      'sliver_padding' => 'Flit::SliverPaddingComponent',
      'sliver_to_box_adapter' => 'Flit::SliverToBoxAdapterComponent',
      'stack' => 'Flit::StackComponent',
      'switch' => 'Flit::SwitchComponent',
      'text_button' => 'Flit::TextButtonComponent',
      'text' => 'Flit::TextComponent',
      'text_form_field' => 'Flit::TextFormFieldComponent',
      'theme' => 'Flit::ThemeComponent',
      'tooltip' => 'Flit::TooltipComponent',
      'tween_animation' => 'Flit::TweenAnimationComponent',
      'wrap' => 'Flit::WrapComponent'
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
