namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    # Invoke rake db:migrate just in case...
    Rake::Task['db:migrate'].invoke
    # Need two gems to make this work: faker & populator
    # Docs at: http://populator.rubyforge.org/
    require 'populator'
    # Docs at: http://faker.rubyforge.org/rdoc/
    require 'faker'

    # Step 0: clear any old data in the db
    [Study, Drug].each(&:delete_all)

	
  	#Step 1: Add studies

    study1 = Study.new
    study1.name = "Migraine"
    study1.description = "Migraine Study"
    study1.save!
    
    #Step 2: Add medications
    
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Actos"
    alzheimers_medications.category = "restricted"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!

    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alurate"
    alzheimers_medications.category = "restricted"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!

       
   end
end