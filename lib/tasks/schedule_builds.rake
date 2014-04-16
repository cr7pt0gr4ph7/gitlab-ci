desc "GitLab CI | Clean running builds"
task schedule_builds: :environment do
  Scheduler.new.perform(verbose)
  puts "Done" if verbose
end
