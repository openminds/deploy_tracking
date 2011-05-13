configuration = Capistrano::Configuration.respond_to?(:instance) ? Capistrano::Configuration.instance(:must_exist) : Capistrano.configuration(:must_exist)

configuration.load do
  namespace :deploy_tracking do
    desc "Add a new line to the Deploylog"
    task :log do
      current_stage = fetch :stage, 'production'
      deploy_file = fetch :deploy_file, 'Deploylog'
      branch = fetch :branch, 'master'
      git_info = `git log --oneline #{branch}|head -n 1`.chomp

      File.open(deploy_file, 'a+') do |f|
        f.puts "[#{release_name}] Deployed to #{current_stage} by #{me.ljust(10)} - #{branch}:#{git_info}"
      end

      # `git add #{deploy_file} && git commit -m "Updating deploylog for deploy #{release_name}" #{deploy_file}`
    end

    task :mark do
      put "Deployed by #{me}", "#{latest_release}/deployed_by"
    end
  end

  before "deploy", "deploy_tracking:log"
  before "deploy:finalize_update", "deploy_tracking:mark"
end

def me
  "#{`whoami`.chomp}@#{`uname -n`.chomp}"
end
