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
    study1.name = "Bio Something"
    study1.description = "Description for Schire"
    study1.save!
    
    #Step 2: Add drugs
    
    rivastigmine = Drug.new
    rivastigmine.medication_name = "rivastigmine" 
    rivastigmine.brand_name = "exelon"
    rivastigmine.category = "restricted"
    rivastigmine.information = "Allowed with following stipulations, Prior to Randomization
    Allowed provided that the dose has been stable for 90 days prior to randomization. During double blindtreatment period, subject will remain on the same dose throughout the duration of the trail."
    rivastigmine.study_id = study1.id
    rivastigmine.save!



    galantamine = Drug.new
    galantamine.medication_name = "galantamine" 
    galantamine.brand_name = "razadyne"
    galantamine.category = "restricted"
    galantamine.information = "Allowed with following stipulations, Prior to Randomization
    Allowed provided that the dose has been stable for 90 days prior to randomization. During double blindtreatment period, subject will remain on the same dose throughout the duration of the trail."
    galantamine.study_id = study1.id
    galantamine.save!



    memantine = Drug.new
    memantine.medication_name = "memantine" 
    memantine.brand_name = "namenda"
    memantine.category = "restricted"
    memantine.information = "Allowed with following stipulations, Prior to Randomization
    Allowed provided that the dose has been stable for 90 days prior to randomization. During double blindtreatment period, subject will remain on the same dose throughout the duration of the trail."
    memantine.study_id = study1.id
    memantine.save!



    aripiprazole = Drug.new
    aripiprazole.medication_name = "aripiprazole" 
    aripiprazole.brand_name = "abilify"
    aripiprazole.category = "prohibited"
    aripiprazole.information = "Prior to randomization 7 day wash out except clozaril (30 days) and depot longacting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    aripiprazole.study_id = study1.id
    aripiprazole.save!


   end
end