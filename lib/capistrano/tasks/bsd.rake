namespace :bsd do

  desc 'Init system after installation'
  task :init do
    on roles(:bsd) do |host|
      invoke 'bsd:update'
      invoke 'bsd:upgrade'
    end
  end

  desc 'Update BSD packages collection'
  task :update do
    on roles(:bsd) do |host|
      execute :pkg, 'update'
    end
  end

  desc 'Upgrade BSD local packages'
  task :upgrade do
    on roles(:bsd) do |host|
      execute :pkg, 'upgrade'
    end
  end

end
