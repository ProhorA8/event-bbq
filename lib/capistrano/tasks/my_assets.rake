namespace :my_assets do
  desc 'Compile assets via webpacker'
  task :webpack_assets_compile do
    run_locally do
      with rails_env: fetch(:stage) do
        execute 'yarn install --check-files'
        execute 'bundle exec rake webpacker:compile'
      end
    end
  end
end
