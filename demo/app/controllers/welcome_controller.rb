class WelcomeController < ApplicationController
  def index
    dir = Rails.root.join('app', 'assets', 'pages', '*')
    @pages = Dir.glob(dir).map { |f|  File.basename(f, File.extname(f)) }
  end

  def show
  end
end
