require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsBase
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # https://guides.rubyonrails.org/configuring.html#config-action-view-field-error-proc
    config.action_view.field_error_proc = Proc.new { |html_tag, instance|
      # content_tag :div, html_tag, class: "field_with_errors"
      html = Nokogiri::HTML::DocumentFragment.parse(html_tag)
      html = html.at_css("input") || html.at_css("textarea")
      unless html.nil?
        css_class = html['class'] || ""
        html['class'] = css_class.split.push("is-invalid").join(' ')
        html_tag = html.to_s.html_safe
      end
      html_tag
    }
    
    config.i18n.default_locale = :'zh-CN'
    #
    # 配置默认ID使用UUID代替INT
    config.generators  do |g|
      g.orm :active_record, primary_key_type: :uuid
    end

    config.assets.css_compressor = :sass
    # config.assets.js_compressor  = :terser
  end
end
