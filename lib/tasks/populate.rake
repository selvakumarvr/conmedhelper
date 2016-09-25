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
    
    alzheimers_medications1 = Drug.new
    alzheimers_medications1.medication_name = "Actos"
    alzheimers_medications1.category = "restricted"
    alzheimers_medications1.study_id = study1.id
    alzheimers_medications1.save!

    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alurate"
    alzheimers_medications.category = "restricted"
     alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!

    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alzheimers Medications"
    alzheimers_medications.category = "restricted"
    alzheimers_medications.information = "Allowed provided that the dose has been stable for 90 days prior to randomization.During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!

    nmda_receptor_antagonist_medications = Drug.new
    nmda_receptor_antagonist_medications.medication_name = "NMDA Receptor Antagonist Medications"
    nmda_receptor_antagonist_medications.category = "restricted two"
    nmda_receptor_antagonist_medications.information = "Allowed provided that the dose has been stable for 90 days prior to randomization.During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nmda_receptor_antagonist_medications.study_id = study1.id
    nmda_receptor_antagonist_medications.save!
       
   end
end