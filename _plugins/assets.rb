require "jekyll-assets"

font_awesome_root = Gem::Specification.find_by_name("font-awesome-sass").gem_dir
Sprockets.append_path File.join(font_awesome_root, "vendor", "assets", "stylesheets")
Sprockets.append_path File.join(font_awesome_root, "vendor", "assets", "fonts")
