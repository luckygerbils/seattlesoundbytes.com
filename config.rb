###
# Global
###
# External file encoding should be UTF-8
Encoding.default_external = 'utf-8'

set :build_dir,   'www'

activate :directory_indexes

### 
# Compass
###
compass_config do |config|
    config.http_path = "/"
    #config.sass_dir = "source/css"
    #config.images_dir = "source/img"
    #config.http_images_path = "/img"
    #config.javascripts_dir = "js"
end

###
# Haml
###
set :haml, { :attr_wrapper => "\"" } 

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# Build-specific configuration
configure :build do
  activate :minify_css
  
  set :haml, { :ugly => true }
end
