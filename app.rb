Bundler.require

class App < Sinatra::Base
  configure do
    set :assets_precompile, %w(application.js)
    register Sinatra::AssetPipeline

    # Actual Rails Assets integration, everything else is Sprockets
    if defined?(RailsAssets)
      RailsAssets.load_paths.each do |path|
        settings.sprockets.append_path(path)
      end
    end
  end

  get "/" do
    haml :index
  end
end
