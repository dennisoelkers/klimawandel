require "rufus-scheduler"

namespace :temperature_snapshots do
  desc "TODO"
  task once: :environment do
    run_job
  end

  desc "TODO"
  task periodic: :environment do
    scheduler = Rufus::Scheduler.new

    scheduler.every '30s' do
      run_job
    end

    scheduler.join
  end

  def run_job
    job = TakeTemperatureReadingsJob.new
    job.perform
  end
end
