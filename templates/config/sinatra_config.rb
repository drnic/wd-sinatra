set :environment, RACK_ENV
set :root, WDSinatra::AppLoader.root_path
set :app_file, __FILE__
set :public_folder, File.join(WDSinatra::AppLoader.root_path, "public")
# Checks on static files before dispatching calls
enable :static
# enable rack session
enable :session
set :raise_errors, false
# enable that option to run by calling this file automatically (without using the config.ru file)
# enable :run
use Rack::ContentLength
