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

    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Actos"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alurate"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Amobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Amytal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aprepitant"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aprobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Atretol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Baycadron"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Benzamycin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Betamethasone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Biaxin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Busodium,Butisol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Butabarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Butalbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "calan, calan SR"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Carbamazepine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Carbatrol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cardizem"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Celestone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Clarithromycin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cortef"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Crixivan"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cyclosporine-oral/IV only"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Deltasone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Dexamethasone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "DexPak"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Diflucan"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Dilantin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Diltiazem"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Efavirenz"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Emend"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Epitol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Equetro"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ery Tab"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Erythromycin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Fioricet,Fiorinal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Fluconazole"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Fortovase"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Hydrocortisone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Indinavir"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Invirase"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Itraconazole"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Kenalog"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ketek"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ketoconazole"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Luminal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mebaral"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Medrol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mephobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Methylprednisolone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mycobutin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Myidone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mysoline"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nefazodone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nelfinavir"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nembutal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Neoral"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nevirapine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nizoral"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Norvir"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Oxacarbazepine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pentobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Phenobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Phenytek"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Phenytoin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pioglitazone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prednisolone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prednisone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prelone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Primidone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rezulin, Resulin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rifabutin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rifadin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rifampicin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rifampin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rifater"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rimactane"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ritonavir"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Sanimmune"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Saquinavir"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Secobarbital"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "seconal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Serzone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Solfoton"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Sporanox"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Stocrin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Sustiva"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Tegretol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Triamcinolone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Trican"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Trileptal"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Troglitazone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Verapamil"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Viracept"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Viramune"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cisapride"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Coumadin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Digitex, Digox"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Digoxin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Lanoxin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Orap"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pimozide"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prepulside"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Propulsid"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Warfarin"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Buprenorphine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cizol"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Enzalutamide"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Modafinil"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Provigil"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Quinine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Quinine"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "St Johns Wort"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Suboxone"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Subutex"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Xtandi"
    alzheimers_medications.category = "Prohibited 30 days prior to screening and throughout the study period"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!



    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Acetaminophen"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Advil"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aleve"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Almotriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Amerge"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Arthrotec"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aspirin"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Axert"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Butorphanol"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cafergot"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cataflam"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Chlorpromazine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Compazine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "DHE 45"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Diclofenac"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Dihydroergotamine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Eletriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ergomar"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ergotamine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Excedrin, Excedrin IB"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Frova"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Frovatriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Hydrocodone"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Hydroxyzine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ibuprofen"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Imitrex"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ketoprofen"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Maxalt"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mepergan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Metoclopramide"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Migranal"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Morphine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Motrin"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "MS Contin"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Naprosyn"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Naproxen"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Naratriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ondasetron"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Orudis"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Oxycodone"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Percocet"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Phenergan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prochlorperazine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Promethazine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Reglan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Relpax"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rizatriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Roxicodone"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Stadol"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Sumatriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Thorazine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Tramadol"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ultracet, Ultram"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Vicodin"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Vistaril"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Voltaren"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Wigraine"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zofran"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zohydro ER"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zolmitriptan"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zomig"
    alzheimers_medications.category = "Allowed during the study; However, they are prohibited within 48 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!



    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aciphex"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aciphex"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alcalak"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alka-seltzer"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "AlternaGel"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aluminum Carbonate"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Aluminum Hydroxide"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Amphojel"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Axid"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Basaljel"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Bicarbonate of soda"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Bismuth Subsalicylate"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Calcium Carbonate"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Cimetidine"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Esomeprazole"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Famotidine"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Hydrotalcite"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Lansoprazole"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Losec"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Maalox"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Magaldrate+Simethicone"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Magnesium Hydroxide"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Milk of Magnesia Phillips"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Mylanta"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nexium"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Nizatidine"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Omeprazole"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pantoloc"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pantoprazole"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pantozol"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pariet"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Pepcid"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "pepsil"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "pepto bismol"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prevacid"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Prilosec"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Protonix"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Quick-Eze"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rabecid"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rabeprazole"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Ranitidine"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rennie"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Rolaids"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Sodium Bicarbonate"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Somac"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Tagamet"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Titralac"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "TUMS"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zantac"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "zegerid"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zoton"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Zurcal"
    alzheimers_medications.category = "Allowed during the study; however they are prohibited within 24 hours prior to taking IP"
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!




  end
end