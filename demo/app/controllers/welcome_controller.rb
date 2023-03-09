class WelcomeController < ApplicationController
  def index
    dir = Rails.root.join('app', 'assets', 'pages', '*')
    @pages = Dir.glob(dir).map { |f|  File.basename(f, File.extname(f)) }
  end

  def show
    @data = {}
    @page = params[:page]
    file = Rails.root.join('app', 'assets', 'pages', @page)
    begin
      raw = File.read("#{file}.json")
      @layout = MultiJson.load(raw)
    rescue => exception
      raw = File.read("#{file}.yaml")
      @layout = YAML.safe_load(raw)
    rescue => exception
      raise "Invalid data format"
    end

  end
end
