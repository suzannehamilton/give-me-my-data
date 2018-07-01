require "csv"

namespace :csv do
    desc "Load organisations.csv into database"
    task :load => :environment do
        csv_file = "config/organisations.csv"

        Organisation.destroy_all

        CSV.foreach(csv_file) do |row|
            org = Organisation.new
            org.name = row[0]
            org.email = row[1]
            org.save!
        end
    end
end
