###
# Global
###
# External file encoding should be UTF-8
Encoding.default_external = 'utf-8'

# Output directory.
set :build_dir,   'www'

activate :directory_indexes

### 
# Compass
###
compass_config do |config|
    config.http_path = "/"
end

###
# Haml
###
set :haml, { :attr_wrapper => "\"" } 

# Build-specific configuration
configure :build do
  # Minify CSS.and Javascript
  activate :minify_css
  activate :minify_javascript
  # Compress images.
  activate :smusher
  # Let HTML output be ugly.
  set :haml, { :ugly => true }
end
