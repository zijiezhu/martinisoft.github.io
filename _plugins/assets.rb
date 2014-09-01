require "jekyll-assets"

fa = Gem::Specification.find_by_name("font-awesome-sass").gem_dir
%w[fonts/font-awesome stylesheets].each do |asset|
  Sprockets.append_path File.join(fa, "assets", asset)
end
