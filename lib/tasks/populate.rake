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
    study1.name = "Bio Otsuka"
    study1.description = "Description for Schire"
    study1.save!
    
    #Step 2: Add medications
    
    alzheimers_medications = Drug.new
    alzheimers_medications.medication_name = "Alzheimers Medications"
    alzheimers_medications.category = "restricted"
    alzheimers_medications.information = "Allowed provided that the dose has been stable for 90 days prior to randomization.During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    alzheimers_medications.study_id = study1.id
    alzheimers_medications.save!


    nmda_receptor_antagonist_medications = Drug.new
    nmda_receptor_antagonist_medications.medication_name = "NMDA Receptor Antagonist Medications"
    nmda_receptor_antagonist_medications.category = "restricted"
    nmda_receptor_antagonist_medications.information = "Allowed provided that the dose has been stable for 90 days prior to randomization.During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nmda_receptor_antagonist_medications.study_id = study1.id
    nmda_receptor_antagonist_medications.save!


    acetylcholinesterase_inhibitors_medications = Drug.new
    acetylcholinesterase_inhibitors_medications.medication_name = "Acetylcholinesterase Inhibitors Medications"
    acetylcholinesterase_inhibitors_medications.category = "restricted"
    acetylcholinesterase_inhibitors_medications.information = "Allowed provided that the dose has been stable for 90 days prior to randomization.During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    acetylcholinesterase_inhibitors_medications.study_id = study1.id
    acetylcholinesterase_inhibitors_medications.save!


    antiparkinsons_medications_medications = Drug.new
    antiparkinsons_medications_medications.medication_name = "Antiparkinsons Medications Medications"
    antiparkinsons_medications_medications.category = "restricted"
    antiparkinsons_medications_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    antiparkinsons_medications_medications.study_id = study1.id
    antiparkinsons_medications_medications.save!


    dopaminergic_agents_medications = Drug.new
    dopaminergic_agents_medications.medication_name = "Dopaminergic Agents Medications"
    dopaminergic_agents_medications.category = "restricted"
    dopaminergic_agents_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    dopaminergic_agents_medications.study_id = study1.id
    dopaminergic_agents_medications.save!


    dopamine_receptor_agonists_medications = Drug.new
    dopamine_receptor_agonists_medications.medication_name = "Dopamine Receptor Agonists Medications"
    dopamine_receptor_agonists_medications.category = "restricted"
    dopamine_receptor_agonists_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    dopamine_receptor_agonists_medications.study_id = study1.id
    dopamine_receptor_agonists_medications.save!


    anticholinergics_medications = Drug.new
    anticholinergics_medications.medication_name = "Anticholinergics Medications"
    anticholinergics_medications.category = "restricted"
    anticholinergics_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    anticholinergics_medications.study_id = study1.id
    anticholinergics_medications.save!


    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications = Drug.new
    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications.medication_name = "Selective and Reversible Inhibitor of catechol-O-methyltransferase (COMT) Medications"
    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications.category = "restricted"
    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications.study_id = study1.id
    selective_and_reversible_inhibitor_of_catechol_o_methyltransferase_comt_medications.save!


    maoi_b_inhibitors_medications = Drug.new
    maoi_b_inhibitors_medications.medication_name = "MAOI-B Inhibitors Medications"
    maoi_b_inhibitors_medications.category = "restricted"
    maoi_b_inhibitors_medications.information = "PLEASE REVIEW PROTOCOL SOME OF THESE MAY BE ALLOWED"
    maoi_b_inhibitors_medications.study_id = study1.id
    maoi_b_inhibitors_medications.save!


    antidepressants_medications = Drug.new
    antidepressants_medications.medication_name = "Antidepressants Medications"
    antidepressants_medications.category = "restricted"
    antidepressants_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    antidepressants_medications.study_id = study1.id
    antidepressants_medications.save!


    monoamine_oxidase_inhibitors_maois_medications = Drug.new
    monoamine_oxidase_inhibitors_maois_medications.medication_name = "Monoamine Oxidase Inhibitors (MAOIs) Medications"
    monoamine_oxidase_inhibitors_maois_medications.category = "restricted"
    monoamine_oxidase_inhibitors_maois_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    monoamine_oxidase_inhibitors_maois_medications.study_id = study1.id
    monoamine_oxidase_inhibitors_maois_medications.save!


    aminoketone_medications = Drug.new
    aminoketone_medications.medication_name = "Aminoketone Medications"
    aminoketone_medications.category = "restricted"
    aminoketone_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    aminoketone_medications.study_id = study1.id
    aminoketone_medications.save!


    selective_serotonin_reutake_inhibitors_ssris_medications = Drug.new
    selective_serotonin_reutake_inhibitors_ssris_medications.medication_name = "Selective Serotonin Reutake Inhibitors (SSRIs) Medications"
    selective_serotonin_reutake_inhibitors_ssris_medications.category = "restricted"
    selective_serotonin_reutake_inhibitors_ssris_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    selective_serotonin_reutake_inhibitors_ssris_medications.study_id = study1.id
    selective_serotonin_reutake_inhibitors_ssris_medications.save!


    selective_norepinephrine_reuptake_inhibitors_snris_medications = Drug.new
    selective_norepinephrine_reuptake_inhibitors_snris_medications.medication_name = "Selective Norepinephrine Reuptake Inhibitors (SNRIs) Medications"
    selective_norepinephrine_reuptake_inhibitors_snris_medications.category = "restricted"
    selective_norepinephrine_reuptake_inhibitors_snris_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    selective_norepinephrine_reuptake_inhibitors_snris_medications.study_id = study1.id
    selective_norepinephrine_reuptake_inhibitors_snris_medications.save!


    tricyclic_antidepressants_medications = Drug.new
    tricyclic_antidepressants_medications.medication_name = "Tricyclic Antidepressants (TCAs) Medications"
    tricyclic_antidepressants_medications.category = "restricted"
    tricyclic_antidepressants_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization.EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA(duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC(fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN."
    tricyclic_antidepressants_medications.study_id = study1.id
    tricyclic_antidepressants_medications.save!


    benzodiazepines_medications = Drug.new
    benzodiazepines_medications.medication_name = "Benzodiazepines Medications"
    benzodiazepines_medications.category = "restricted"
    benzodiazepines_medications.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    benzodiazepines_medications.study_id = study1.id
    benzodiazepines_medications.save!


    benzodiazepine_tca_combination_medications = Drug.new
    benzodiazepine_tca_combination_medications.medication_name = "Benzodiazepine/TCA Combination Medications"
    benzodiazepine_tca_combination_medications.category = "restricted"
    benzodiazepine_tca_combination_medications.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    benzodiazepine_tca_combination_medications.study_id = study1.id
    benzodiazepine_tca_combination_medications.save!


    benzodiazepine_anticholinergic_combination_medications = Drug.new
    benzodiazepine_anticholinergic_combination_medications.medication_name = "Benzodiazepine/Anticholinergic Combination Medications"
    benzodiazepine_anticholinergic_combination_medications.category = "prohibited"
    benzodiazepine_anticholinergic_combination_medications.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    benzodiazepine_anticholinergic_combination_medications.study_id = study1.id
    benzodiazepine_anticholinergic_combination_medications.save!


    antipsychotics_medications = Drug.new
    antipsychotics_medications.medication_name = "Antipsychotics Medications"
    antipsychotics_medications.category = "prohibited"
    antipsychotics_medications.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited."
    antipsychotics_medications.study_id = study1.id
    antipsychotics_medications.save!


    typical_antipsychotics_medications = Drug.new
    typical_antipsychotics_medications.medication_name = "Typical ANTIPSYCHOTICS Medications"
    typical_antipsychotics_medications.category = "prohibited"
    typical_antipsychotics_medications.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited."
    typical_antipsychotics_medications.study_id = study1.id
    typical_antipsychotics_medications.save!


    atypical_antipsychotics_medications = Drug.new
    atypical_antipsychotics_medications.medication_name = "Atypical ANTIPSYCHOTICS Medications"
    atypical_antipsychotics_medications.category = "prohibited"
    atypical_antipsychotics_medications.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable 
    antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited."
    atypical_antipsychotics_medications.study_id = study1.id
    atypical_antipsychotics_medications.save!


    atypical_ssri_combination_medications = Drug.new
    atypical_ssri_combination_medications.medication_name = "Atypical/SSRI Combination Medications"
    atypical_ssri_combination_medications.category = "prohibited"
    atypical_ssri_combination_medications.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable 
    antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited."
    atypical_ssri_combination_medications.study_id = study1.id
    atypical_ssri_combination_medications.save!


    anticholinergics_medications = Drug.new
    anticholinergics_medications.medication_name = "Anticholinergics Medications"
    anticholinergics_medications.category = "prohibited"
    anticholinergics_medications.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited."
    anticholinergics_medications.study_id = study1.id
    anticholinergics_medications.save!


    mood_stabilizers_medications = Drug.new
    mood_stabilizers_medications.medication_name = "Mood Stabilizers Medications"
    mood_stabilizers_medications.category = "prohibited"
    mood_stabilizers_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited."
    mood_stabilizers_medications.study_id = study1.id
    mood_stabilizers_medications.save!

         
    anticonvulsants_medications = Drug.new
    anticonvulsants_medications.medication_name = "Anticonvulsants Medications"
    anticonvulsants_medications.category = "prohibited"
    anticonvulsants_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited."
    anticonvulsants_medications.study_id = study1.id
    anticonvulsants_medications.save!


    analgesics_pain_relievers_medications = Drug.new
    analgesics_pain_relievers_medications.medication_name = "Analgesics Pain Relievers Medications"
    analgesics_pain_relievers_medications.category = "prohibited"
    analgesics_pain_relievers_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited."
    analgesics_pain_relievers_medications.study_id = study1.id
    analgesics_pain_relievers_medications.save!


    opioid_opiates_medications = Drug.new
    opioid_opiates_medications.medication_name = "Opioid-Opiates Medications"
    opioid_opiates_medications.category = "prohibited"
    opioid_opiates_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opioid_opiates_medications.study_id = study1.id
    opioid_opiates_medications.save!


    opioid_agonist_antagonist_analgesics_medications = Drug.new
    opioid_agonist_antagonist_analgesics_medications.medication_name = "Opioid Agonist-Antagonist Analgesics Medications"
    opioid_agonist_antagonist_analgesics_medications.category = "prohibited"
    opioid_agonist_antagonist_analgesics_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opioid_agonist_antagonist_analgesics_medications.study_id = study1.id
    opioid_agonist_antagonist_analgesics_medications.save!


    partial_opioid_agonist_opioid_antagonist_medications = Drug.new
    partial_opioid_agonist_opioid_antagonist_medications.medication_name = "Partial Opioid Agonist/Opioid Antagonist Medications"
    partial_opioid_agonist_opioid_antagonist_medications.category = "prohibited"
    partial_opioid_agonist_opioid_antagonist_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    partial_opioid_agonist_opioid_antagonist_medications.study_id = study1.id
    partial_opioid_agonist_opioid_antagonist_medications.save!


    opioid_antitussives_medications = Drug.new
    opioid_antitussives_medications.medication_name = "Opioid Antitussives Medications"
    opioid_antitussives_medications.category = "prohibited"
    opioid_antitussives_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opioid_antitussives_medications.study_id = study1.id
    opioid_antitussives_medications.save!


    opioid_antitussive_antihistamine_combination_medications = Drug.new
    opioid_antitussive_antihistamine_combination_medications.medication_name = "Opioid Antitussive_Antihistamine Combination Medications"
    opioid_antitussive_antihistamine_combination_medications.category = "prohibited"
    opioid_antitussive_antihistamine_combination_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opioid_antitussive_antihistamine_combination_medications.study_id = study1.id
    opioid_antitussive_antihistamine_combination_medications.save!


    opioid_anticholinergic_combination_medications = Drug.new
    opioid_anticholinergic_combination_medications.medication_name = "Opioid_Anticholinergic Combination Medications"
    opioid_anticholinergic_combination_medications.category = "prohibited"
    opioid_anticholinergic_combination_medications.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opioid_anticholinergic_combination_medications.study_id = study1.id
    opioid_anticholinergic_combination_medications.save!


    smoking_cessastion_medications = Drug.new
    smoking_cessastion_medications.medication_name = "Smoking Cessastion Medications"
    smoking_cessastion_medications.category = "prohibited"
    smoking_cessastion_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited."
    smoking_cessastion_medications.study_id = study1.id
    smoking_cessastion_medications.save!


    partial_cholinergic_nicotinic_agonist_medications = Drug.new
    partial_cholinergic_nicotinic_agonist_medications.medication_name = "Partial Cholinergic Nicotinic Agonist Medications"
    partial_cholinergic_nicotinic_agonist_medications.category = "prohibited"
    partial_cholinergic_nicotinic_agonist_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited."
    partial_cholinergic_nicotinic_agonist_medications.study_id = study1.id
    partial_cholinergic_nicotinic_agonist_medications.save!


    non_benzodiazepine_sleeping_aids_medications = Drug.new
    non_benzodiazepine_sleeping_aids_medications.medication_name = "Non-benzodiazepine Sleeping Aids Medications"
    non_benzodiazepine_sleeping_aids_medications.category = "restricted"
    non_benzodiazepine_sleeping_aids_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    non_benzodiazepine_sleeping_aids_medications.study_id = study1.id
    non_benzodiazepine_sleeping_aids_medications.save!


    antihistamines_medications = Drug.new
    antihistamines_medications.medication_name = "Antihistamines Medications"
    antihistamines_medications.category = "restricted"
    antihistamines_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    antihistamines_medications.study_id = study1.id
    antihistamines_medications.save!


    thiazides_medications = Drug.new
    thiazides_medications.medication_name = "Thiazides Medications"
    thiazides_medications.category = "restricted"
    thiazides_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    thiazides_medications.study_id = study1.id
    thiazides_medications.save!


    loop_diuretics_medications = Drug.new
    loop_diuretics_medications.medication_name = "Loop Diuretics Medications"
    loop_diuretics_medications.category = "restricted"
    loop_diuretics_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    loop_diuretics_medications.study_id = study1.id
    loop_diuretics_medications.save!


    potassium_sparing_medications = Drug.new
    potassium_sparing_medications.medication_name = "Potassium- Sparing Medications"
    potassium_sparing_medications.category = "restricted"
    potassium_sparing_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    potassium_sparing_medications.study_id = study1.id
    potassium_sparing_medications.save!


    aldosterone_receptor_blockers_medications = Drug.new
    aldosterone_receptor_blockers_medications.medication_name = "Aldosterone Receptor Blockers Medications"
    aldosterone_receptor_blockers_medications.category = "restricted"
    aldosterone_receptor_blockers_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    aldosterone_receptor_blockers_medications.study_id = study1.id
    aldosterone_receptor_blockers_medications.save!


    carbonic_anhydrase_inhibitors_medications = Drug.new
    carbonic_anhydrase_inhibitors_medications.medication_name = "Carbonic Anhydrase Inhibitors Medications"
    carbonic_anhydrase_inhibitors_medications.category = "restricted"
    carbonic_anhydrase_inhibitors_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    carbonic_anhydrase_inhibitors_medications.study_id = study1.id
    carbonic_anhydrase_inhibitors_medications.save!


    diuretic_combinations_medications = Drug.new
    diuretic_combinations_medications.medication_name = "Diuretic Combinations Medications"
    diuretic_combinations_medications.category = "restricted"
    diuretic_combinations_medications.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    diuretic_combinations_medications.study_id = study1.id
    diuretic_combinations_medications.save!


    anti_hypertensives_blood_pressure_meds_medications = Drug.new
    anti_hypertensives_blood_pressure_meds_medications.medication_name = "Anti-Hypertensives Blood Pressure Meds Medications"
    anti_hypertensives_blood_pressure_meds_medications.category = "restricted"
    anti_hypertensives_blood_pressure_meds_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    anti_hypertensives_blood_pressure_meds_medications.study_id = study1.id
    anti_hypertensives_blood_pressure_meds_medications.save!


    calcium_channel_blockers_medications = Drug.new
    calcium_channel_blockers_medications.medication_name = "Calcium Channel Blockers (CCBs) Medications"
    calcium_channel_blockers_medications.category = "restricted"
    calcium_channel_blockers_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    calcium_channel_blockers_medications.study_id = study1.id
    calcium_channel_blockers_medications.save!


    dihydropyridines_medications = Drug.new
    dihydropyridines_medications.medication_name = "Dihydropyridines Medications"
    dihydropyridines_medications.category = "restricted"
    dihydropyridines_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    dihydropyridines_medications.study_id = study1.id
    dihydropyridines_medications.save!


    calcium_channel_blockers_medications = Drug.new
    calcium_channel_blockers_medications.medication_name = "Calcium Channel Blockers (CCBs) Medications"
    calcium_channel_blockers_medications.category = "restricted"
    calcium_channel_blockers_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    calcium_channel_blockers_medications.study_id = study1.id
    calcium_channel_blockers_medications.save!


    non_dihydropyridines_medications = Drug.new
    non_dihydropyridines_medications.medication_name = "Non-dihydropyridines Medications"
    non_dihydropyridines_medications.category = "restricted"
    non_dihydropyridines_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    non_dihydropyridines_medications.study_id = study1.id
    non_dihydropyridines_medications.save!


    acei_ccb_combinations_medications = Drug.new
    acei_ccb_combinations_medications.medication_name = "ACEI/CCB Combinations Medications"
    acei_ccb_combinations_medications.category = "restricted"
    acei_ccb_combinations_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    acei_ccb_combinations_medications.study_id = study1.id
    acei_ccb_combinations_medications.save!


    angiotensin_converting_enzyme_inhibitors_medications = Drug.new
    angiotensin_converting_enzyme_inhibitors_medications.medication_name = "Angiotensin Converting Enzyme Inhibitors (ACEIs) Medications"
    angiotensin_converting_enzyme_inhibitors_medications.category = "restricted"
    angiotensin_converting_enzyme_inhibitors_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    angiotensin_converting_enzyme_inhibitors_medications.study_id = study1.id
    angiotensin_converting_enzyme_inhibitors_medications.save!


    acei_diuretic_combinations_medications = Drug.new
    acei_diuretic_combinations_medications.medication_name = "ACEI/Diuretic Combinations Medications"
    acei_diuretic_combinations_medications.category = "restricted"
    acei_diuretic_combinations_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    acei_diuretic_combinations_medications.study_id = study1.id
    acei_diuretic_combinations_medications.save!


    angiotensin_ii_receptor_blockers_medications = Drug.new
    angiotensin_ii_receptor_blockers_medications.medication_name = "Angiotensin II Receptor Blockers (ARBs) Medications"
    angiotensin_ii_receptor_blockers_medications.category = "restricted"
    angiotensin_ii_receptor_blockers_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    angiotensin_ii_receptor_blockers_medications.study_id = study1.id
    angiotensin_ii_receptor_blockers_medications.save!


    arb_diuretic_combinations_medications = Drug.new
    arb_diuretic_combinations_medications.medication_name = "ARB/Diuretic Combinations Medications"
    arb_diuretic_combinations_medications.category = "restricted"
    arb_diuretic_combinations_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    arb_diuretic_combinations_medications.study_id = study1.id
    arb_diuretic_combinations_medications.save!


    beta_blockers_medications = Drug.new
    beta_blockers_medications.medication_name = "Beta Blockers Medications"
    beta_blockers_medications.category = "restricted"
    beta_blockers_medications.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    beta_blockers_medications.study_id = study1.id
    beta_blockers_medications.save!


    beta_blocker_diuretic_combination_medications = Drug.new
    beta_blocker_diuretic_combination_medications.medication_name = "Beta Blocker/Diuretic Combination Medications"
    beta_blocker_diuretic_combination_medications.category = "restricted"
    beta_blocker_diuretic_combination_medications.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout. For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    beta_blocker_diuretic_combination_medications.study_id = study1.id
    beta_blocker_diuretic_combination_medications.save!


    alpha2_agonists_medications = Drug.new
    alpha2_agonists_medications.medication_name = "Alpha-2 Agonists Medications"
    alpha2_agonists_medications.category = "restricted"
    alpha2_agonists_medications.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout. For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    alpha2_agonists_medications.study_id = study1.id
    alpha2_agonists_medications.save!


    alpha1_adrenergic_blockers_medications = Drug.new
    alpha1_adrenergic_blockers_medications.medication_name = "Alpha-1 Adrenergic Blockers Medications"
    alpha1_adrenergic_blockers_medications.category = "restricted"
    alpha1_adrenergic_blockers_medications.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout. For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    alpha1_adrenergic_blockers_medications.study_id = study1.id
    alpha1_adrenergic_blockers_medications.save!


    centrally_acting_drug_diuretic_combination_medications = Drug.new
    centrally_acting_drug_diuretic_combination_medications.medication_name = "Centrally Acting drug/Diuretic Combination Medications"
    centrally_acting_drug_diuretic_combination_medications.category = "restricted"
    centrally_acting_drug_diuretic_combination_medications.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout. For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    centrally_acting_drug_diuretic_combination_medications.study_id = study1.id
    centrally_acting_drug_diuretic_combination_medications.save!


    direct_vasodilators_medications = Drug.new
    direct_vasodilators_medications.medication_name = "Direct Vasodilators Medications"
    direct_vasodilators_medications.category = "restricted"
    direct_vasodilators_medications.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout. For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    direct_vasodilators_medications.study_id = study1.id
    direct_vasodilators_medications.save!


    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications = Drug.new
    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications.medication_name = "Nutritional Supplements and Nonprescription Herbal Preparations (with CNS effects) Medications"
    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications.category = "prohibited"
    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications.study_id = study1.id
    nutritional_supplements_and_nonprescription_herbal_preparations_with_cns_effects_medications.save!          
      
    #Step 2: Add drugs   
    
    memantine_hcl = Drug.new
    memantine_hcl.medication_name = "memantine hcl"
    memantine_hcl.brand_name = "Namenda"
    memantine_hcl.category = "restricted"
    memantine_hcl.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    memantine_hcl.study_id = study1.id
    memantine_hcl.save!


    amantadine = Drug.new
    amantadine.medication_name = "amantadine"
    amantadine.brand_name = "Symmetrel"
    amantadine.category = "restricted"
    amantadine.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    amantadine.study_id = study1.id
    amantadine.save!


    donepezil_hcl = Drug.new
    donepezil_hcl.medication_name = "donepezil hcl"
    donepezil_hcl.brand_name = "Aricept"
    donepezil_hcl.category = "restricted"
    donepezil_hcl.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    donepezil_hcl.study_id = study1.id
    donepezil_hcl.save!


    rivastigmine_tartrate = Drug.new
    rivastigmine_tartrate.medication_name = "rivastigmine tartrate"
    rivastigmine_tartrate.brand_name = "Exelon"
    rivastigmine_tartrate.category = "restricted"
    rivastigmine_tartrate.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    rivastigmine_tartrate.study_id = study1.id
    rivastigmine_tartrate.save!


    galantamine_hydrobromide = Drug.new
    galantamine_hydrobromide.medication_name = "galantamine hydrobromide"
    galantamine_hydrobromide.brand_name = "Razadyne"
    galantamine_hydrobromide.category = "restricted"
    galantamine_hydrobromide.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    galantamine_hydrobromide.study_id = study1.id
    galantamine_hydrobromide.save!


    pyridostigmine_bromide = Drug.new
    pyridostigmine_bromide.medication_name = "pyridostigmine bromide"
    pyridostigmine_bromide.brand_name = "Mestinon"
    pyridostigmine_bromide.category = "restricted"
    pyridostigmine_bromide.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    pyridostigmine_bromide.study_id = study1.id
    pyridostigmine_bromide.save!


    tacrine = Drug.new
    tacrine.medication_name = "tacrine"
    tacrine.brand_name = "Cognex"
    tacrine.category = "restricted"
    tacrine.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    tacrine.study_id = study1.id
    tacrine.save!


    ecothiophate_iodide = Drug.new
    ecothiophate_iodide.medication_name = "ecothiophate iodide"
    ecothiophate_iodide.brand_name = "Phospholine"
    ecothiophate_iodide.category = "restricted"
    ecothiophate_iodide.information = "Allowed provided that the dose has been stable for 90 days prior to randomization. During double-blind treatment period Subject will  remain on the same dose throughout the duration of the trial."
    ecothiophate_iodide.study_id = study1.id
    ecothiophate_iodide.save!


    carbidopa = Drug.new
    carbidopa.medication_name = "carbidopa"
    carbidopa.brand_name = "Lodosyn"
    carbidopa.category = "restricted"
    carbidopa.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    carbidopa.study_id = study1.id
    carbidopa.save!


    carbidopa_levodopa = Drug.new
    carbidopa_levodopa.medication_name = "carbidopa/levodopa"
    carbidopa_levodopa.brand_name = "Parcopa"
    carbidopa_levodopa.category = "restricted"
    carbidopa_levodopa.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    carbidopa_levodopa.study_id = study1.id
    carbidopa_levodopa.save!


    carbidopa_levodopa_entacapone = Drug.new
    carbidopa_levodopa_entacapone.medication_name = "carbidopa/levodopa/entacapone"
    carbidopa_levodopa_entacapone.brand_name = "Stalevo"
    carbidopa_levodopa_entacapone.category = "restricted"
    carbidopa_levodopa_entacapone.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    carbidopa_levodopa_entacapone.study_id = study1.id
    carbidopa_levodopa_entacapone.save!


    pramipexole = Drug.new
    pramipexole.medication_name = "pramipexole"
    pramipexole.brand_name = "Mirapex"
    pramipexole.category = "restricted"
    pramipexole.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    pramipexole.study_id = study1.id
    pramipexole.save!


    bromocriptine_mesylate = Drug.new
    bromocriptine_mesylate.medication_name = "bromocriptine mesylate"
    bromocriptine_mesylate.brand_name = "Parlodel, Cycloset"
    bromocriptine_mesylate.category = "restricted"
    bromocriptine_mesylate.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    bromocriptine_mesylate.study_id = study1.id
    bromocriptine_mesylate.save!


    pergolide = Drug.new
    pergolide.medication_name = "pergolide"
    pergolide.brand_name = "Permax No longer available"
    pergolide.category = "restricted"
    pergolide.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    pergolide.study_id = study1.id
    pergolide.save!


    ropinirole = Drug.new
    ropinirole.medication_name = "ropinirole"
    ropinirole.brand_name = "Requip"
    ropinirole.category = "restricted"
    ropinirole.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    ropinirole.study_id = study1.id
    ropinirole.save!


    biperiden = Drug.new
    biperiden.medication_name = "biperiden"
    biperiden.brand_name = "Akineton"
    biperiden.category = "restricted"
    biperiden.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    biperiden.study_id = study1.id
    biperiden.save!


    trihexyphenidyl = Drug.new
    trihexyphenidyl.medication_name = "trihexyphenidyl"
    trihexyphenidyl.brand_name = "Artane"
    trihexyphenidyl.category = "restricted"
    trihexyphenidyl.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    trihexyphenidyl.study_id = study1.id
    trihexyphenidyl.save!


    ethopropazine = Drug.new
    ethopropazine.medication_name = "ethopropazine"
    ethopropazine.brand_name = "Profenamine"
    ethopropazine.category = "restricted"
    ethopropazine.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    ethopropazine.study_id = study1.id
    ethopropazine.save!


    benztropine = Drug.new
    benztropine.medication_name = "benztropine"
    benztropine.brand_name = "Cogentin"
    benztropine.category = "restricted"
    benztropine.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    benztropine.study_id = study1.id
    benztropine.save!


    entacapone = Drug.new
    entacapone.medication_name = "entacapone"
    entacapone.brand_name = "Comtan"
    entacapone.category = "restricted"
    entacapone.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    entacapone.study_id = study1.id
    entacapone.save!


    tolcapone = Drug.new
    tolcapone.medication_name = "Tasmar"
    tolcapone.brand_name = "Symmetrel"
    tolcapone.category = "restricted"
    tolcapone.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    tolcapone.study_id = study1.id
    tolcapone.save!


    rasagiline_mesylate = Drug.new
    rasagiline_mesylate.medication_name = "rasagiline mesylate"
    rasagiline_mesylate.brand_name = "Azilect"
    rasagiline_mesylate.category = "restricted"
    rasagiline_mesylate.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    rasagiline_mesylate.study_id = study1.id
    rasagiline_mesylate.save!

    selegiline = Drug.new
    selegiline.medication_name = "selegiline"
    selegiline.brand_name = "Zelapar, Emsam, Eldepryl"
    selegiline.category = "restricted"
    selegiline.information = "PLEASE REVIEW PROTOCOLSOME OF THESE MAY BE ALLOWED"
    selegiline.study_id = study1.id
    selegiline.save!


    phenelzine_sulfate = Drug.new
    phenelzine_sulfate.medication_name = "phenelzine sulfate"
    phenelzine_sulfate.brand_name = "Nardil"
    phenelzine_sulfate.category = "restricted"
    phenelzine_sulfate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    phenelzine_sulfate.study_id = study1.id
    phenelzine_sulfate.save!


    tranylcypromine_sulfate = Drug.new
    tranylcypromine_sulfate.medication_name = "tranylcypromine sulfate"
    tranylcypromine_sulfate.brand_name = "Parnate"
    tranylcypromine_sulfate.category = "restricted"
    tranylcypromine_sulfate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    tranylcypromine_sulfate.study_id = study1.id
    tranylcypromine_sulfate.save!


    isocarboxazid = Drug.new
    isocarboxazid.medication_name = "isocarboxazid"
    isocarboxazid.brand_name = "Marplan"
    isocarboxazid.category = "restricted"
    isocarboxazid.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    isocarboxazid.study_id = study1.id
    isocarboxazid.save!


    bupropion = Drug.new
    bupropion.medication_name = "bupropion"
    bupropion.brand_name = "Wellbutrin, Zyban, Aplenzin"
    bupropion.category = "restricted"
    bupropion.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    bupropion.study_id = study1.id
    bupropion.save!


    mirtazapine = Drug.new
    mirtazapine.medication_name = "mirtazapine"
    mirtazapine.brand_name = "Remeron"
    mirtazapine.category = "restricted"
    mirtazapine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    mirtazapine.study_id = study1.id
    mirtazapine.save!


    citalopram = Drug.new
    citalopram.medication_name = "citalopram"
    citalopram.brand_name = "Celexa"
    citalopram.category = "restricted"
    citalopram.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    citalopram.study_id = study1.id
    citalopram.save!


    escitalopram = Drug.new
    escitalopram.medication_name = "escitalopram"
    escitalopram.brand_name = "Lexapro"
    escitalopram.category = "restricted"
    escitalopram.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    escitalopram.study_id = study1.id
    escitalopram.save!


    fluvoxamine = Drug.new
    fluvoxamine.medication_name = "fluvoxamine"
    fluvoxamine.brand_name = "Luvox"
    fluvoxamine.category = "restricted"
    fluvoxamine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    fluvoxamine.study_id = study1.id
    fluvoxamine.save!


    paroxetine = Drug.new
    paroxetine.medication_name = "paroxetine"
    paroxetine.brand_name = "Paxil"
    paroxetine.category = "restricted"
    paroxetine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    paroxetine.study_id = study1.id
    paroxetine.save!


    paroxetine_mesylate = Drug.new
    paroxetine_mesylate.medication_name = "paroxetine mesylate"
    paroxetine_mesylate.brand_name = "Pexeva"
    paroxetine_mesylate.category = "restricted"
    paroxetine_mesylate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    paroxetine_mesylate.study_id = study1.id
    paroxetine_mesylate.save!


    fluoxetine = Drug.new
    fluoxetine.medication_name = "fluoxetine"
    fluoxetine.brand_name = "Prozac, Sarafem"
    fluoxetine.category = "restricted"
    fluoxetine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    fluoxetine.study_id = study1.id
    fluoxetine.save!


    sertraline = Drug.new
    sertraline.medication_name = "sertraline"
    sertraline.brand_name = "Zoloft"
    sertraline.category = "restricted"
    sertraline.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    sertraline.study_id = study1.id
    sertraline.save!


    atomoxetine = Drug.new
    atomoxetine.medication_name = "atomoxetine"
    atomoxetine.brand_name = "Strattera"
    atomoxetine.category = "restricted"
    atomoxetine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    atomoxetine.study_id = study1.id
    atomoxetine.save!


    duloxetine = Drug.new
    duloxetine.medication_name = "duloxetine"
    duloxetine.brand_name = "Cymbalta"
    duloxetine.category = "restricted"
    duloxetine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    duloxetine.study_id = study1.id
    duloxetine.save!


    venlafaxine = Drug.new
    venlafaxine.medication_name = "venlafaxine"
    venlafaxine.brand_name = "Effexor"
    venlafaxine.category = "restricted"
    venlafaxine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    venlafaxine.study_id = study1.id
    venlafaxine.save!


    nefazodone = Drug.new
    nefazodone.medication_name = "nefazodone"
    nefazodone.brand_name = "Serzone"
    nefazodone.category = "restricted"
    nefazodone.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    nefazodone.study_id = study1.id
    nefazodone.save!


    desvenlafaxine = Drug.new
    desvenlafaxine.medication_name = "desvenlafaxine"
    desvenlafaxine.brand_name = "Pristiq"
    desvenlafaxine.category = "restricted"
    desvenlafaxine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    desvenlafaxine.study_id = study1.id
    desvenlafaxine.save!


    milnacipran_hcl = Drug.new
    milnacipran_hcl.medication_name = "milnacipran hcl"
    milnacipran_hcl.brand_name = "Savella"
    milnacipran_hcl.category = "restricted"
    milnacipran_hcl.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    milnacipran_hcl.study_id = study1.id
    milnacipran_hcl.save!


    amitriptyline = Drug.new
    amitriptyline.medication_name = "amitriptyline"
    amitriptyline.brand_name = "Elavil"
    amitriptyline.category = "restricted"
    amitriptyline.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    amitriptyline.study_id = study1.id
    amitriptyline.save!


    nortriptyline = Drug.new
    nortriptyline.medication_name = "nortriptyline"
    nortriptyline.brand_name = "Pamelor, Aventyl"
    nortriptyline.category = "restricted"
    nortriptyline.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    nortriptyline.study_id = study1.id
    nortriptyline.save!


    imipramine = Drug.new
    imipramine.medication_name = "imipramine"
    imipramine.brand_name = "Tofranil"
    imipramine.category = "restricted"
    imipramine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    imipramine.study_id = study1.id
    imipramine.save!


    doxepin = Drug.new
    doxepin.medication_name = "doxepin"
    doxepin.brand_name = "Sinequan"
    doxepin.category = "restricted"
    doxepin.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    doxepin.study_id = study1.id
    doxepin.save!


    clomipramine = Drug.new
    clomipramine.medication_name = "clomipramine"
    clomipramine.brand_name = "Anafranil"
    clomipramine.category = "restricted"
    clomipramine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    clomipramine.study_id = study1.id
    clomipramine.save!


    desipramine = Drug.new
    desipramine.medication_name = "desipramine"
    desipramine.brand_name = "Norpramin"
    desipramine.category = "restricted"
    desipramine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    desipramine.study_id = study1.id
    desipramine.save!


    protriptyline_hcl = Drug.new
    protriptyline_hcl.medication_name = "protriptyline hcl"
    protriptyline_hcl.brand_name = "Vivactil"
    protriptyline_hcl.category = "restricted"
    protriptyline_hcl.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    protriptyline_hcl.study_id = study1.id
    protriptyline_hcl.save!


    amoxapine = Drug.new
    amoxapine.medication_name = "amoxapine"
    amoxapine.brand_name = "Strattera"
    amoxapine.category = "restricted"
    amoxapine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    amoxapine.study_id = study1.id
    amoxapine.save!


    trimipramine_maleate = Drug.new
    trimipramine_maleate.medication_name = "trimipramine maleate"
    trimipramine_maleate.brand_name = "Surmontil"
    trimipramine_maleate.category = "restricted"
    trimipramine_maleate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    trimipramine_maleate.study_id = study1.id
    trimipramine_maleate.save!


    maprotiline = Drug.new
    maprotiline.medication_name = "maprotiline"
    maprotiline.brand_name = "Ludiomil"
    maprotiline.category = "restricted"
    maprotiline.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    maprotiline.study_id = study1.id
    maprotiline.save!


    doxepin = Drug.new
    doxepin.medication_name = "doxepin"
    doxepin.brand_name = "Silenor"
    doxepin.category = "restricted"
    doxepin.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    doxepin.study_id = study1.id
    doxepin.save!


    buspirone = Drug.new
    buspirone.medication_name = "buspirone"
    buspirone.brand_name = "Buspar"
    buspirone.category = "restricted"
    buspirone.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    buspirone.study_id = study1.id
    buspirone.save!


    meprobamate = Drug.new
    meprobamate.medication_name = "meprobamate"
    meprobamate.category = "prohibited"
    meprobamate.information = "*Prior to randomization - 7 day washout *During double-blind treatment period - Prohibited"   
    meprobamate.study_id = study1.id
    meprobamate.save!


    hydroxyzine_pamoate = Drug.new
    hydroxyzine_pamoate.medication_name = "hydroxyzine pamoate"
    hydroxyzine_pamoate.brand_name = "Atarax"
    hydroxyzine_pamoate.category = "restricted"
    hydroxyzine_pamoate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. EXCEPTION:PROHIBITED: CYP 2D6 Inhibitors are Prohibited PROHIBITED CYMBALTA (duloxetine):PAXIL,PAXEVA(paroxtine):PROZAC (fluoxetine) During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial. MAOI PROHIBITED: NARDIL,PARNATE, MARPLAN"
    hydroxyzine_pamoate.study_id = study1.id
    hydroxyzine_pamoate.save!


    alprazolam = Drug.new
    alprazolam.medication_name = "alprazolam"
    alprazolam.brand_name = "Xanax, Niravam"
    alprazolam.category = "restricted"
    alprazolam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    alprazolam.study_id = study1.id
    alprazolam.save!


    chlordiazepoxide = Drug.new
    chlordiazepoxide.medication_name = "chlordiazepoxide"
    chlordiazepoxide.brand_name = "Librium"
    chlordiazepoxide.category = "restricted"
    chlordiazepoxide.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    chlordiazepoxide.study_id = study1.id
    chlordiazepoxide.save!


    clonazepam = Drug.new
    clonazepam.medication_name = "clonazepam"
    clonazepam.brand_name = "Klonopin"
    clonazepam.category = "restricted"
    clonazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    clonazepam.study_id = study1.id
    clonazepam.save!


    clorazepate = Drug.new
    clorazepate.medication_name = "clorazepate"
    clorazepate.brand_name = "Tranxene"
    clorazepate.category = "restricted"
    clorazepate.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    clorazepate.study_id = study1.id
    clorazepate.save!


    diazepam = Drug.new
    diazepam.medication_name = "diazepam"
    diazepam.brand_name = "Diastat, Valium"
    diazepam.category = "restricted"
    diazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    diazepam.study_id = study1.id
    diazepam.save!


    estazolam = Drug.new
    estazolam.medication_name = "estazolam"
    estazolam.brand_name = "Prosom"
    estazolam.category = "restricted"
    estazolam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    estazolam.study_id = study1.id
    estazolam.save!


    flurazepam = Drug.new
    flurazepam.medication_name = "flurazepam"
    flurazepam.brand_name = "Dalmane"
    flurazepam.category = "restricted"
    flurazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    flurazepam.study_id = study1.id
    flurazepam.save!


    halazepam = Drug.new
    halazepam.medication_name = "halazepam"
    halazepam.brand_name = "Paxipam"
    halazepam.category = "restricted"
    halazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    halazepam.study_id = study1.id
    halazepam.save!


    lorazepam = Drug.new
    lorazepam.medication_name = "lorazepam"
    lorazepam.brand_name = "Ativan"
    lorazepam.category = "restricted"
    lorazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    lorazepam.study_id = study1.id
    lorazepam.save!


    oxazepam = Drug.new
    oxazepam.medication_name = "oxazepam"
    oxazepam.brand_name = "Serax"
    oxazepam.category = "restricted"
    oxazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    oxazepam.study_id = study1.id
    oxazepam.save!


    prazepam = Drug.new
    prazepam.medication_name = "prazepam"
    prazepam.brand_name = "Centrax"
    prazepam.category = "restricted"
    prazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    prazepam.study_id = study1.id
    prazepam.save!


    quazepam = Drug.new
    quazepam.medication_name = "quazepam"
    quazepam.brand_name = "Doral"
    quazepam.category = "restricted"
    quazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    quazepam.study_id = study1.id
    quazepam.save!


    temazepam = Drug.new
    temazepam.medication_name = "temazepam"
    temazepam.brand_name = "Restoril"
    temazepam.category = "restricted"
    temazepam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    temazepam.study_id = study1.id
    temazepam.save!


    triazolam = Drug.new
    triazolam.medication_name = "triazolam"
    triazolam.brand_name = "Halcion"
    triazolam.category = "restricted"
    triazolam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    triazolam.study_id = study1.id
    triazolam.save!


    midazolam = Drug.new
    midazolam.medication_name = "midazolam"
    midazolam.brand_name = "Versed"
    midazolam.category = "restricted"
    midazolam.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    midazolam.study_id = study1.id
    midazolam.save!


    chlordiazepoxide_amitriptyline = Drug.new
    chlordiazepoxide_amitriptyline.medication_name = "chlordiazepoxide/amitriptyline"
    chlordiazepoxide_amitriptyline.brand_name = "Limbitrol"
    chlordiazepoxide_amitriptyline.category = "restricted"
    chlordiazepoxide_amitriptyline.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    chlordiazepoxide_amitriptyline.study_id = study1.id
    chlordiazepoxide_amitriptyline.save!


    clidinium_bromide_chlordiazepoxide_hcl = Drug.new
    clidinium_bromide_chlordiazepoxide_hcl.medication_name = "clidinium bromide/chlordiazepoxide hcl"
    clidinium_bromide_chlordiazepoxide_hcl.brand_name = "Librax"
    clidinium_bromide_chlordiazepoxide_hcl.category = "prohibited"
    clidinium_bromide_chlordiazepoxide_hcl.information = "*Prior to randomization: Allowed, but limited to 4 days/ week with a max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *During first 4 weeks of the randomized phase (baseline to Week 4 visits): Allowed but limited to 4 days/week with max dose of 2 mg/day of lorazepam (or equivalent) or less depending on dose limiting side effects. *Must not be administered within 12 hours prior to the efficacy and safety assessments, including EPS scales. *Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of benzodiazepine documented (including a notation of the drug name, dose,and time administered on the eCRF). *After week 4 visit - Prohibited. INTRAMUSCULAR USE OF ANY BENZODIAZEPINE IS PROHIBITED COMBINED USE OF SLEEP AGENTS AND BENZODIAZEPINES IS PROHIBITED."
    clidinium_bromide_chlordiazepoxide_hcl.study_id = study1.id
    clidinium_bromide_chlordiazepoxide_hcl.save!


    chlorpromazine = Drug.new
    chlorpromazine.medication_name = "chlorpromazine"
    chlorpromazine.brand_name = "Thiorazine"
    chlorpromazine.category = "prohibited"
    chlorpromazine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    chlorpromazine.study_id = study1.id
    chlorpromazine.save!


    thioridazine = Drug.new
    thioridazine.medication_name = "thioridazine"
    thioridazine.brand_name = "Mellaril"
    thioridazine.category = "prohibited"
    thioridazine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    thioridazine.study_id = study1.id
    thioridazine.save!


    fluphenazine = Drug.new
    fluphenazine.medication_name = "fluphenazine"
    fluphenazine.brand_name = "Prolixin"
    fluphenazine.category = "prohibited"
    fluphenazine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    fluphenazine.study_id = study1.id
    fluphenazine.save!


    haloperidol = Drug.new
    haloperidol.medication_name = "haloperidol"
    haloperidol.brand_name = "Haldol"
    haloperidol.category = "prohibited"
    haloperidol.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    haloperidol.study_id = study1.id
    haloperidol.save!


    perphenazine = Drug.new
    perphenazine.medication_name = "perphenazine"
    perphenazine.brand_name = "Trilafon"
    perphenazine.category = "prohibited"
    perphenazine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    perphenazine.study_id = study1.id
    perphenazine.save!


    thiothixene = Drug.new
    thiothixene.medication_name = "thiothixene"
    thiothixene.brand_name = "Navane"
    thiothixene.category = "prohibited"
    thiothixene.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    thiothixene.study_id = study1.id
    thiothixene.save!


    trifluoperazine = Drug.new
    trifluoperazine.medication_name = "trifluoperazine"
    trifluoperazine.brand_name = "Stelazine"
    trifluoperazine.category = "prohibited"
    trifluoperazine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    trifluoperazine.study_id = study1.id
    trifluoperazine.save!


    loxapine = Drug.new
    loxapine.medication_name = "loxapine"
    loxapine.brand_name = "Loxitane"
    loxapine.category = "prohibited"
    loxapine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    loxapine.study_id = study1.id
    loxapine.save!


    molindone = Drug.new
    molindone.medication_name = "molindone"
    molindone.brand_name = "Moban"
    molindone.category = "prohibited"
    molindone.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    molindone.study_id = study1.id
    molindone.save!


    clozapine = Drug.new
    clozapine.medication_name = "clozapine"
    clozapine.brand_name = "Clozaril, Fazaclo"
    clozapine.category = "prohibited"
    clozapine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    clozapine.study_id = study1.id
    clozapine.save!


    risperidone = Drug.new
    risperidone.medication_name = "risperidone"
    risperidone.brand_name = "Risperdal"
    risperidone.category = "prohibited"
    risperidone.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    risperidone.study_id = study1.id
    risperidone.save!


    olanzapine = Drug.new
    olanzapine.medication_name = "olanzapine"
    olanzapine.brand_name = "Zyprexa"
    olanzapine.category = "prohibited"
    olanzapine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    olanzapine.study_id = study1.id
    olanzapine.save!


    quetiapine = Drug.new
    quetiapine.medication_name = "quetiapine"
    quetiapine.brand_name = "Seroquel"
    quetiapine.category = "prohibited"
    quetiapine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    quetiapine.study_id = study1.id
    quetiapine.save!


    ziprasidone = Drug.new
    ziprasidone.medication_name = "ziprasidone"
    ziprasidone.brand_name = "Geodon"
    ziprasidone.category = "prohibited"
    ziprasidone.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    ziprasidone.study_id = study1.id
    ziprasidone.save!


    aripiprazole = Drug.new
    aripiprazole.medication_name = "aripiprazole"
    aripiprazole.brand_name = "Abilify"
    aripiprazole.category = "prohibited"
    aripiprazole.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    aripiprazole.study_id = study1.id
    aripiprazole.save!


    asenapine = Drug.new
    asenapine.medication_name = "asenapine"
    asenapine.brand_name = "Saphris"
    asenapine.category = "prohibited"
    asenapine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    asenapine.study_id = study1.id
    asenapine.save!


    pimozide = Drug.new
    pimozide.medication_name = "pimozide"
    pimozide.brand_name = "Orap"
    pimozide.category = "prohibited"
    pimozide.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    pimozide.study_id = study1.id
    pimozide.save!


    paliperidone = Drug.new
    paliperidone.medication_name = "paliperidone"
    paliperidone.brand_name = "Invega"
    paliperidone.category = "prohibited"
    paliperidone.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    paliperidone.study_id = study1.id
    paliperidone.save!


    iloperidone = Drug.new
    iloperidone.medication_name = "iloperidone"
    iloperidone.brand_name = "Fanapt"
    iloperidone.category = "prohibited"
    iloperidone.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    iloperidone.study_id = study1.id
    iloperidone.save!


    lurasidone_hcl = Drug.new
    lurasidone_hcl.medication_name = "lurasidone hcl"
    lurasidone_hcl.brand_name = "Latuda"
    lurasidone_hcl.category = "prohibited"
    lurasidone_hcl.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    lurasidone_hcl.study_id = study1.id
    lurasidone_hcl.save!


    Olanzapine_fluoxetine = Drug.new
    Olanzapine_fluoxetine.medication_name = "Olanzapine/fluoxetine"
    Olanzapine_fluoxetine.brand_name = "Symbyax"
    Olanzapine_fluoxetine.category = "prohibited"
    Olanzapine_fluoxetine.information = "Prior to randomization - 7 day washout EXCEPTION: depot or long-acting injectable antipsychotics prior to randomization - Washout of 1.5 times the dosing interval (according to the prescribing information). EXCEPTION: clozapine Not allowed within 30 days prior to randomization. During double-blind treatment period - Prohibited"
    Olanzapine_fluoxetine.study_id = study1.id
    Olanzapine_fluoxetine.save!


    ipratropium_bromide = Drug.new
    ipratropium_bromide.medication_name = "ipratropium bromide"
    ipratropium_bromide.brand_name = "Atrovent"
    ipratropium_bromide.category = "prohibited"
    ipratropium_bromide.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    ipratropium_bromide.study_id = study1.id
    ipratropium_bromide.save!


    benztropine_mesylate = Drug.new
    benztropine_mesylate.medication_name = "benztropine mesylate"
    benztropine_mesylate.brand_name = "Cogentin"
    benztropine_mesylate.category = "prohibited"
    benztropine_mesylate.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    benztropine_mesylate.study_id = study1.id
    benztropine_mesylate.save!


    oxybutynin_chloride = Drug.new
    oxybutynin_chloride.medication_name = "oxybutynin chloride"
    oxybutynin_chloride.brand_name = "Ditropan"
    oxybutynin_chloride.category = "prohibited"
    oxybutynin_chloride.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    oxybutynin_chloride.study_id = study1.id
    oxybutynin_chloride.save!


    tolterodine = Drug.new
    tolterodine.medication_name = "tolterodine"
    tolterodine.brand_name = "Detrol"
    tolterodine.category = "prohibited"
    tolterodine.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    tolterodine.study_id = study1.id
    tolterodine.save!


    scopolamine = Drug.new
    scopolamine.medication_name = "scopolamine"
    scopolamine.brand_name = "Transderm"
    scopolamine.category = "prohibited"
    scopolamine.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    scopolamine.study_id = study1.id
    scopolamine.save!


    trimethobenzamide_hcl = Drug.new
    trimethobenzamide_hcl.medication_name = "trimethobenzamide hcl"
    trimethobenzamide_hcl.brand_name = "Tigan"
    trimethobenzamide_hcl.category = "prohibited"
    trimethobenzamide_hcl.information = "Not permitted within the 7 days prior to randomization and for the duration of the trial. During double-blind treatment period - Prohibited"
    trimethobenzamide_hcl.study_id = study1.id
    trimethobenzamide_hcl.save!


    lithium_carbonate = Drug.new
    lithium_carbonate.medication_name = "lithium carbonate"
    lithium_carbonate.brand_name = "Lithobid, Eskalith"
    lithium_carbonate.category = "prohibited"
    lithium_carbonate.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    lithium_carbonate.study_id = study1.id
    lithium_carbonate.save!


    lithium_citrate = Drug.new
    lithium_citrate.medication_name = "lithium citrate"
    lithium_citrate.brand_name = ""
    lithium_citrate.category = "prohibited"
    lithium_citrate.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    lithium_citrate.study_id = study1.id
    lithium_citrate.save!


    divalproex_sodium_valproic_acid = Drug.new
    divalproex_sodium_valproic_acid.medication_name = "divalproex sodium (valproic acid)"
    divalproex_sodium_valproic_acid.brand_name = "Depakote"
    divalproex_sodium_valproic_acid.category = "prohibited"
    divalproex_sodium_valproic_acid.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    divalproex_sodium_valproic_acid.study_id = study1.id
    divalproex_sodium_valproic_acid.save!


    carbamazepine = Drug.new
    carbamazepine.medication_name = "carbamazepine"
    carbamazepine.brand_name = "Tegretol, Equetro"
    carbamazepine.category = "prohibited"
    carbamazepine.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    carbamazepine.study_id = study1.id
    carbamazepine.save!


    lamotrigine = Drug.new
    lamotrigine.medication_name = "lamotrigine"
    lamotrigine.brand_name = "Lamictal"
    lamotrigine.category = "prohibited"
    lamotrigine.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    lamotrigine.study_id = study1.id
    lamotrigine.save!


    gabapentin = Drug.new
    gabapentin.medication_name = "gabapentin"
    gabapentin.brand_name = "Neurontin"
    gabapentin.category = "prohibited"
    gabapentin.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    gabapentin.study_id = study1.id
    gabapentin.save!


    topiramate = Drug.new
    topiramate.medication_name = "topiramate"
    topiramate.brand_name = "Topamax"
    topiramate.category = "prohibited"
    topiramate.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    topiramate.study_id = study1.id
    topiramate.save!


    oxcarbazepine = Drug.new
    oxcarbazepine.medication_name = "oxcarbazepine"
    oxcarbazepine.brand_name = "Trileptal"
    oxcarbazepine.category = "prohibited"
    oxcarbazepine.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    oxcarbazepine.study_id = study1.id
    oxcarbazepine.save!


    phenobarbital = Drug.new
    phenobarbital.medication_name = "phenobarbital"
    phenobarbital.brand_name = "Luminal"
    phenobarbital.category = "prohibited"
    phenobarbital.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    phenobarbital.study_id = study1.id
    phenobarbital.save!


    phenytoin = Drug.new
    phenytoin.medication_name = "phenytoin"
    phenytoin.brand_name = "Dilantin"
    phenytoin.category = "prohibited"
    phenytoin.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    phenytoin.study_id = study1.id
    phenytoin.save!


    alfentanil_hcl = Drug.new
    alfentanil_hcl.medication_name = "alfentanil hcl"
    alfentanil_hcl.brand_name = "Alfenta"
    alfentanil_hcl.category = "prohibited"
    alfentanil_hcl.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    alfentanil_hcl.study_id = study1.id
    alfentanil_hcl.save!


    morphine_sulfate = Drug.new
    morphine_sulfate.medication_name = "morphine sulfate"
    morphine_sulfate.brand_name = "Oramorph, Astramorph PF, MSIR, Avinza, Duramorph, Infumorph, Kadian, MS Contin, Roxanol"
    morphine_sulfate.category = "prohibited"
    morphine_sulfate.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    morphine_sulfate.study_id = study1.id
    morphine_sulfate.save!


    oxycodone_ibuprofen = Drug.new
    oxycodone_ibuprofen.medication_name = "oxycodone/ibuprofen"
    oxycodone_ibuprofen.brand_name = "Combunox"
    oxycodone_ibuprofen.category = "prohibited"
    oxycodone_ibuprofen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    oxycodone_ibuprofen.study_id = study1.id
    oxycodone_ibuprofen.save!


    meperidine = Drug.new
    meperidine.medication_name = "meperidine"
    meperidine.brand_name = "Demerol, Meperitab"
    meperidine.category = "prohibited"
    meperidine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    meperidine.study_id = study1.id
    meperidine.save!


    hydromorphone = Drug.new
    hydromorphone.medication_name = "hydromorphone"
    hydromorphone.brand_name = "Dilaudid, Exalgo"
    hydromorphone.category = "prohibited"
    hydromorphone.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydromorphone.study_id = study1.id
    hydromorphone.save!


    methadone = Drug.new
    methadone.medication_name = "methadone"
    methadone.brand_name = "Dolophine, Methadose"
    methadone.category = "prohibited"
    methadone.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    methadone.study_id = study1.id
    methadone.save!


    fentanyl = Drug.new
    fentanyl.medication_name = "fentanyl"
    fentanyl.brand_name = "Duragesic, Sublimaze, Abstral, Actiq, Fentora, Lazanda, Onsolis"
    fentanyl.category = "prohibited"
    fentanyl.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    fentanyl.study_id = study1.id
    fentanyl.save!


    oxycodone_aspirin = Drug.new
    oxycodone_aspirin.medication_name = "oxycodone/aspirin"
    oxycodone_aspirin.brand_name = "Symmetrel"
    oxycodone_aspirin.category = "prohibited"
    oxycodone_aspirin.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    oxycodone_aspirin.study_id = study1.id
    oxycodone_aspirin.save!


    oxycodone_acetaminophen = Drug.new
    oxycodone_acetaminophen.medication_name = "oxycodone/acetaminophen"
    oxycodone_acetaminophen.brand_name = "Symmetrel"
    oxycodone_acetaminophen.category = "prohibited"
    oxycodone_acetaminophen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    oxycodone_acetaminophen.study_id = study1.id
    oxycodone_acetaminophen.save!


    oxymorphone = Drug.new
    oxymorphone.medication_name = "oxymorphone"
    oxymorphone.brand_name = "Oxycontin, Oxyfast, OxyIR, Roxicodone, Oxecta"
    oxymorphone.category = "prohibited"
    oxymorphone.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    oxymorphone.study_id = study1.id
    oxymorphone.save!


    remifentanil_hcl = Drug.new
    remifentanil_hcl.medication_name = "remifentanil hcl"
    remifentanil_hcl.brand_name = "Ultiva"
    remifentanil_hcl.category = "prohibited"
    remifentanil_hcl.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    remifentanil_hcl.study_id = study1.id
    remifentanil_hcl.save!


    sufentanil_citrate = Drug.new
    sufentanil_citrate.medication_name = "sufentanil citrate"
    sufentanil_citrate.brand_name = "Sufenta"
    sufentanil_citrate.category = "prohibited"
    sufentanil_citrate.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    sufentanil_citrate.study_id = study1.id
    sufentanil_citrate.save!


    levorphanol = Drug.new
    levorphanol.medication_name = "levorphanol"
    levorphanol.brand_name = "Levo-Dromoran"
    levorphanol.category = "prohibited"
    levorphanol.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    levorphanol.study_id = study1.id
    levorphanol.save!


    buprenorphine_hcl = Drug.new
    buprenorphine_hcl.medication_name = "buprenorphine hcl"
    buprenorphine_hcl.brand_name = "Buprenex"
    buprenorphine_hcl.category = "prohibited"
    buprenorphine_hcl.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    buprenorphine_hcl.study_id = study1.id
    buprenorphine_hcl.save!


    codeine = Drug.new
    codeine.medication_name = "codeine"
    codeine.category = "prohibited"
    codeine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    codeine.study_id = study1.id
    codeine.save!


    tapentodol = Drug.new
    tapentodol.medication_name = "tapentodol"
    tapentodol.brand_name = "Nucynta"
    tapentodol.category = "prohibited"
    tapentodol.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    tapentodol.study_id = study1.id
    tapentodol.save!


    tramadol = Drug.new
    tramadol.medication_name = "tramadol"
    tramadol.brand_name = "Ultram, Conzip"
    tramadol.category = "prohibited"
    tramadol.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    tramadol.study_id = study1.id
    tramadol.save!


    tramadol_acetaminophen = Drug.new
    tramadol_acetaminophen.medication_name = "tramadol/acetaminophen"
    tramadol_acetaminophen.brand_name = "Symmetrel"
    tramadol_acetaminophen.category = "prohibited"
    tramadol_acetaminophen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    tramadol_acetaminophen.study_id = study1.id
    tramadol_acetaminophen.save!


    hydrocodone_acetaminophen = Drug.new
    hydrocodone_acetaminophen.medication_name = "hydrocodone/acetaminophen"
    hydrocodone_acetaminophen.brand_name = "Lortab, Lorcet, Norco, Vicodin, Zydone, Anexsia, Xodol"
    hydrocodone_acetaminophen.category = "prohibited"
    hydrocodone_acetaminophen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydrocodone_acetaminophen.study_id = study1.id
    hydrocodone_acetaminophen.save!


    hydrocodone_ibuprofen = Drug.new
    hydrocodone_ibuprofen.medication_name = "hydrocodone/ibuprofen"
    hydrocodone_ibuprofen.brand_name = "Reprexain, Vicoprofen"
    hydrocodone_ibuprofen.category = "prohibited"
    hydrocodone_ibuprofen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydrocodone_ibuprofen.study_id = study1.id
    hydrocodone_ibuprofen.save!


    acetaminophen_codeine = Drug.new
    acetaminophen_codeine.medication_name = "acetaminophen/codeine"
    acetaminophen_codeine.brand_name = "Tylenol with Codeine"
    acetaminophen_codeine.category = "prohibited"
    acetaminophen_codeine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    acetaminophen_codeine.study_id = study1.id
    acetaminophen_codeine.save!


    opium_tincture = Drug.new
    opium_tincture.medication_name = "opium tincture"
    opium_tincture.brand_name = "Paregoric"
    opium_tincture.category = "prohibited"
    opium_tincture.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    opium_tincture.study_id = study1.id
    opium_tincture.save!


    dihydrocodeine_bitartrate_acetaminophen_caffeine = Drug.new
    dihydrocodeine_bitartrate_acetaminophen_caffeine.medication_name = "dihydrocodeine bitartrate/acetaminophen/caffeine"
    dihydrocodeine_bitartrate_acetaminophen_caffeine.brand_name = "Trezix"
    dihydrocodeine_bitartrate_acetaminophen_caffeine.category = "prohibited"
    dihydrocodeine_bitartrate_acetaminophen_caffeine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    dihydrocodeine_bitartrate_acetaminophen_caffeine.study_id = study1.id
    dihydrocodeine_bitartrate_acetaminophen_caffeine.save!


    codeine_acetaminophen_caffeine_butalbital = Drug.new
    codeine_acetaminophen_caffeine_butalbital.medication_name = "codeine/acetaminophen/caffeine/butalbital"
    codeine_acetaminophen_caffeine_butalbital.brand_name = "Fioricet/Codeine"
    codeine_acetaminophen_caffeine_butalbital.category = "prohibited"
    codeine_acetaminophen_caffeine_butalbital.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    codeine_acetaminophen_caffeine_butalbital.study_id = study1.id
    codeine_acetaminophen_caffeine_butalbital.save!


    codeine_aspirin_caffeine_butalbital = Drug.new
    codeine_aspirin_caffeine_butalbital.medication_name = "codeine/aspirin/caffeine/butalbital"
    codeine_aspirin_caffeine_butalbital.brand_name = "Fiorinal/Codeine, Ascomp/Codeine"
    codeine_aspirin_caffeine_butalbital.category = "prohibited"
    codeine_aspirin_caffeine_butalbital.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    codeine_aspirin_caffeine_butalbital.study_id = study1.id
    codeine_aspirin_caffeine_butalbital.save!


    levacetylmethadol = Drug.new
    levacetylmethadol.medication_name = "levacetylmethadol"
    levacetylmethadol.brand_name = "Orlaam"
    levacetylmethadol.category = "prohibited"
    levacetylmethadol.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    levacetylmethadol.study_id = study1.id
    levacetylmethadol.save!


    diacetylmorphine = Drug.new
    diacetylmorphine.medication_name = "diacetylmorphine"
    diacetylmorphine.brand_name = "Heroin"
    diacetylmorphine.category = "prohibited"
    diacetylmorphine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    diacetylmorphine.study_id = study1.id
    diacetylmorphine.save!


    papaver_somniferum = Drug.new
    papaver_somniferum.medication_name = "papaver somniferum"
    papaver_somniferum.brand_name = "Opium"
    papaver_somniferum.category = "prohibited"
    papaver_somniferum.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    papaver_somniferum.study_id = study1.id
    papaver_somniferum.save!


    butorphanol_tartrate = Drug.new
    butorphanol_tartrate.medication_name = "butorphanol tartrate"
    butorphanol_tartrate.brand_name = "Stadol NS"
    butorphanol_tartrate.category = "prohibited"
    butorphanol_tartrate.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    butorphanol_tartrate.study_id = study1.id
    butorphanol_tartrate.save!


    pentazocine_hcl_acetaminophen = Drug.new
    pentazocine_hcl_acetaminophen.medication_name = "pentazocine hcl/acetaminophen"
    pentazocine_hcl_acetaminophen.brand_name = "Talacen"
    pentazocine_hcl_acetaminophen.category = "prohibited"
    pentazocine_hcl_acetaminophen.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    pentazocine_hcl_acetaminophen.study_id = study1.id
    pentazocine_hcl_acetaminophen.save!


    pentazocine_naloxone = Drug.new
    pentazocine_naloxone.medication_name = "pentazocine_naloxone"
    pentazocine_naloxone.brand_name = "Tailwin NX"
    pentazocine_naloxone.category = "prohibited"
    pentazocine_naloxone.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    pentazocine_naloxone.study_id = study1.id
    pentazocine_naloxone.save!


    buprenorphine_naloxone = Drug.new
    buprenorphine_naloxone.medication_name = "buprenorphine/naloxone"
    buprenorphine_naloxone.brand_name = "Suboxone"
    buprenorphine_naloxone.category = "prohibited"
    buprenorphine_naloxone.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    buprenorphine_naloxone.study_id = study1.id
    buprenorphine_naloxone.save!


    hydrocodone_guaifenesin_phenylephrine = Drug.new
    hydrocodone_guaifenesin_phenylephrine.medication_name = "hydrocodone/guaifenesin/phenylephrine"
    hydrocodone_guaifenesin_phenylephrine.brand_name = "Symmetrel"
    hydrocodone_guaifenesin_phenylephrine.category = "prohibited"
    hydrocodone_guaifenesin_phenylephrine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydrocodone_guaifenesin_phenylephrine.study_id = study1.id
    hydrocodone_guaifenesin_phenylephrine.save!


    hydrocodone_homatropine_methylbromide = Drug.new
    hydrocodone_homatropine_methylbromide.medication_name = "hydrocodone_homatropine methylbromide"
    hydrocodone_homatropine_methylbromide.brand_name = "Hycodan"
    hydrocodone_homatropine_methylbromide.category = "prohibited"
    hydrocodone_homatropine_methylbromide.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydrocodone_homatropine_methylbromide.study_id = study1.id
    hydrocodone_homatropine_methylbromide.save!


    hydrocodone_polistirex_chlorpheniramine = Drug.new
    hydrocodone_polistirex_chlorpheniramine.medication_name = "hydrocodone polistirex_chlorpheniramine"
    hydrocodone_polistirex_chlorpheniramine.brand_name = "Tussionex"
    hydrocodone_polistirex_chlorpheniramine.category = "prohibited"
    hydrocodone_polistirex_chlorpheniramine.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    hydrocodone_polistirex_chlorpheniramine.study_id = study1.id
    hydrocodone_polistirex_chlorpheniramine.save!


    atropine_sulfate_diphenoxylate_hcl = Drug.new
    atropine_sulfate_diphenoxylate_hcl.medication_name = "atropine sulfate_diphenoxylate hcl"
    atropine_sulfate_diphenoxylate_hcl.brand_name = "Lomotil, Lonox, Lofene"
    atropine_sulfate_diphenoxylate_hcl.category = "prohibited"
    atropine_sulfate_diphenoxylate_hcl.information = "Prohibited UNLESS permission is obtained from the medical monitor. Permission may be considered for a documented and clinically appropriate indication if prescribed at a medically appropriate dose and frequency."
    atropine_sulfate_diphenoxylate_hcl.study_id = study1.id
    atropine_sulfate_diphenoxylate_hcl.save!


    varenicline = Drug.new
    varenicline.medication_name = "varenicline"
    varenicline.brand_name = "Chantix"
    varenicline.category = "prohibited"
    varenicline.information = "Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    varenicline.study_id = study1.id
    varenicline.save!


    zolpidem = Drug.new
    zolpidem.medication_name = "zolpidem"
    zolpidem.brand_name = "Ambien"
    zolpidem.category = "restricted"
    zolpidem.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    zolpidem.study_id = study1.id
    zolpidem.save!


    eszopiclone = Drug.new
    eszopiclone.medication_name = "eszopiclone"
    eszopiclone.brand_name = "Lunesta"
    eszopiclone.category = "restricted"
    eszopiclone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    eszopiclone.study_id = study1.id
    eszopiclone.save!


    ramelton = Drug.new
    ramelton.medication_name = "ramelton"
    ramelton.brand_name = "Rozerem"
    ramelton.category = "restricted"
    ramelton.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    ramelton.study_id = study1.id
    ramelton.save!


    zaleplon = Drug.new
    zaleplon.medication_name = "zaleplon"
    zaleplon.brand_name = "Sonata"
    zaleplon.category = "restricted"
    zaleplon.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    zaleplon.study_id = study1.id
    zaleplon.save!


    zopiclone = Drug.new
    zopiclone.medication_name = "zopiclone *not available in USA"
    zopiclone.category = "restricted"
    zopiclone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    zopiclone.study_id = study1.id
    zopiclone.save!


    diphenhydramine = Drug.new
    diphenhydramine.medication_name = "diphenhydramine"
    diphenhydramine.brand_name = "Benadryl, contained in most OTC 'PM' products"
    diphenhydramine.category = "restricted"
    diphenhydramine.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    diphenhydramine.study_id = study1.id
    diphenhydramine.save!


    doxylamine = Drug.new
    doxylamine.medication_name = "doxylamine"
    doxylamine.brand_name = "Unisom"
    doxylamine.category = "restricted"
    doxylamine.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    doxylamine.study_id = study1.id
    doxylamine.save!


    meclizine = Drug.new
    meclizine.medication_name = "meclizine"
    meclizine.brand_name = "Antivert, Univert, Bonine"
    meclizine.category = "restricted"
    meclizine.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    meclizine.study_id = study1.id
    meclizine.save!


    dimethydrinate = Drug.new
    dimethydrinate.medication_name = "dimethydrinate"
    dimethydrinate.brand_name = "Dramamine"
    dimethydrinate.category = "restricted"
    dimethydrinate.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    dimethydrinate.study_id = study1.id
    dimethydrinate.save!


    hydroxyzine_hcl = Drug.new
    hydroxyzine_hcl.medication_name = "hydroxyzine hcl"
    hydroxyzine_hcl.brand_name = "Vistaril"
    hydroxyzine_hcl.category = "restricted"
    hydroxyzine_hcl.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    hydroxyzine_hcl.study_id = study1.id
    hydroxyzine_hcl.save!


    clemastine = Drug.new
    clemastine.medication_name = "clemastine"
    clemastine.brand_name = "Tavist"
    clemastine.category = "restricted"
    clemastine.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    clemastine.study_id = study1.id
    clemastine.save!


    chlorothiazide = Drug.new
    chlorothiazide.medication_name = "chlorothiazide"
    chlorothiazide.brand_name = "Diuril"
    chlorothiazide.category = "restricted"
    chlorothiazide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    chlorothiazide.study_id = study1.id
    chlorothiazide.save!


    chlorthalidone = Drug.new
    chlorthalidone.medication_name = "chlorthalidone"
    chlorthalidone.brand_name = "Thalitone"
    chlorthalidone.category = "restricted"
    chlorthalidone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    chlorthalidone.study_id = study1.id
    chlorthalidone.save!


    hydrochloro_thiazide_HCTZ = Drug.new
    hydrochloro_thiazide_HCTZ.medication_name = "hydrochloro-thiazide (HCTZ)"
    hydrochloro_thiazide_HCTZ.brand_name = "Microzide"
    hydrochloro_thiazide_HCTZ.category = "restricted"
    hydrochloro_thiazide_HCTZ.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    hydrochloro_thiazide_HCTZ.study_id = study1.id
    hydrochloro_thiazide_HCTZ.save!


    indapamide = Drug.new
    indapamide.medication_name = "indapamide"
    indapamide.brand_name = "Lozol"
    indapamide.category = "restricted"
    indapamide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    indapamide.study_id = study1.id
    indapamide.save!


    metolazone = Drug.new
    metolazone.medication_name = "metolazone"
    metolazone.brand_name = "Zaroxolyn"
    metolazone.category = "restricted"
    metolazone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    metolazone.study_id = study1.id
    metolazone.save!


    Methyclothiazide = Drug.new
    Methyclothiazide.medication_name = "Methyclothiazide"
    Methyclothiazide.brand_name = "Enduron, Aquatensen"
    Methyclothiazide.category = "restricted"
    Methyclothiazide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    Methyclothiazide.study_id = study1.id
    Methyclothiazide.save!


    bumetanide = Drug.new
    bumetanide.medication_name = "bumetanide"
    bumetanide.brand_name = "Bumex"
    bumetanide.category = "restricted"
    bumetanide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    bumetanide.study_id = study1.id
    bumetanide.save!


    furosemide = Drug.new
    furosemide.medication_name = "furosemide"
    furosemide.brand_name = "Lasix"
    furosemide.category = "restricted"
    furosemide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    furosemide.study_id = study1.id
    furosemide.save!


    torsemide = Drug.new
    torsemide.medication_name = "torsemide"
    torsemide.brand_name = "Demadex"
    torsemide.category = "restricted"
    torsemide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    torsemide.study_id = study1.id
    torsemide.save!


    ethacrynic_acid = Drug.new
    ethacrynic_acid.medication_name = "ethacrynic acid"
    ethacrynic_acid.brand_name = "Edecrin"
    ethacrynic_acid.category = "restricted"
    ethacrynic_acid.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    ethacrynic_acid.study_id = study1.id
    ethacrynic_acid.save!


    spironolactone = Drug.new
    spironolactone.medication_name = "spironolactone"
    spironolactone.brand_name = "Aldactone"
    spironolactone.category = "restricted"
    spironolactone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    spironolactone.study_id = study1.id
    spironolactone.save!


    amiloride = Drug.new
    amiloride.medication_name = "amiloride"
    amiloride.brand_name = "Midamor"
    amiloride.category = "restricted"
    amiloride.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    amiloride.study_id = study1.id
    amiloride.save!


    triamterene = Drug.new
    triamterene.medication_name = "triamterene"
    triamterene.brand_name = "Dyrenium"
    triamterene.category = "restricted"
    triamterene.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    triamterene.study_id = study1.id
    triamterene.save!


    eplerenone = Drug.new
    eplerenone.medication_name = "eplerenone"
    eplerenone.brand_name = "Inspra"
    eplerenone.category = "restricted"
    eplerenone.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    eplerenone.study_id = study1.id
    eplerenone.save!


    Acetazolamide = Drug.new
    Acetazolamide.medication_name = "Acetazolamide"
    Acetazolamide.brand_name = "Diamox"
    Acetazolamide.category = "restricted"
    Acetazolamide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    Acetazolamide.study_id = study1.id
    Acetazolamide.save!


    Methazolamide = Drug.new
    Methazolamide.medication_name = "Methazolamide"
    Methazolamide.brand_name = "Neptazane"
    Methazolamide.category = "restricted"
    Methazolamide.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    Methazolamide.study_id = study1.id
    Methazolamide.save!


    triamterene_HCTZ = Drug.new
    triamterene_HCTZ.medication_name = "triamterene/HCTZ"
    triamterene_HCTZ.brand_name = "Dyazide, Maxzide"
    triamterene_HCTZ.category = "restricted"
    triamterene_HCTZ.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    triamterene_HCTZ.study_id = study1.id
    triamterene_HCTZ.save!


    amiloride_HCTZ = Drug.new
    amiloride_HCTZ.medication_name = "amiloride/HCTZ"
    amiloride_HCTZ.brand_name = "Symmetrel"
    amiloride_HCTZ.category = "restricted"
    amiloride_HCTZ.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    amiloride_HCTZ.study_id = study1.id
    amiloride_HCTZ.save!


    spironolactone_HCTZ = Drug.new
    spironolactone_HCTZ.medication_name = "spironolactone/HCTZ"
    spironolactone_HCTZ.brand_name = "Aldactazide"
    spironolactone_HCTZ.category = "restricted"
    spironolactone_HCTZ.information = "Prior to randomization: If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial dose may be continued as needed during the trial. If a sleep agent was not previously taken and needs to be initiated, medication should be limited to a max dose of 5 mg/day of zolpidem (or equivalent). During double-blind treatment period: Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments, including EPS scales. Delay scale administration until 8 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of sleep aids documented (including a notation of the drug name, dose,and time administered on the eCRF). Combined use of benzo and non-benzodiazepine sleep agents is Prohibited. Permitted for the treatment of insomnia, but not on the same day as administration of a benzodiazepine, regardless of indication."
    spironolactone_HCTZ.study_id = study1.id
    spironolactone_HCTZ.save!


    amlodipine = Drug.new
    amlodipine.medication_name = "amlodipine"
    amlodipine.brand_name = "Norvasc"
    amlodipine.category = "restricted"
    amlodipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    amlodipine.study_id = study1.id
    amlodipine.save!


    felodipine = Drug.new
    felodipine.medication_name = "felodipine"
    felodipine.brand_name = "Plendil"
    felodipine.category = "restricted"
    felodipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    felodipine.study_id = study1.id
    felodipine.save!


    isradipine = Drug.new
    isradipine.medication_name = "isradipine"
    isradipine.brand_name = "DynaCirc"
    isradipine.category = "restricted"
    isradipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    isradipine.study_id = study1.id
    isradipine.save!


    nicardipine = Drug.new
    nicardipine.medication_name = "nicardipine"
    nicardipine.brand_name = "Cardene"
    nicardipine.category = "restricted"
    nicardipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nicardipine.study_id = study1.id
    nicardipine.save!


    nifedipine = Drug.new
    nifedipine.medication_name = "nifedipine"
    nifedipine.brand_name = "Adalat CC, Procardia"
    nifedipine.category = "restricted"
    nifedipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nifedipine.study_id = study1.id
    nifedipine.save!


    nisoldipine = Drug.new
    nisoldipine.medication_name = "nisoldipine"
    nisoldipine.brand_name = "Sular"
    nisoldipine.category = "restricted"
    nisoldipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nisoldipine.study_id = study1.id
    nisoldipine.save!


    diltiazem_hcl = Drug.new
    diltiazem_hcl.medication_name = "diltiazem hcl"
    diltiazem_hcl.brand_name = "Cardizem, Dilacor, Tiazac, Taztia"
    diltiazem_hcl.category = "restricted"
    diltiazem_hcl.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    diltiazem_hcl.study_id = study1.id
    diltiazem_hcl.save!


    verapamil = Drug.new
    verapamil.medication_name = "verapamil"
    verapamil.brand_name = "Calan, Covera HS, Isoptin SR, Veralan"
    verapamil.category = "restricted"
    verapamil.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    verapamil.study_id = study1.id
    verapamil.save!


    benazepril_amlodipine = Drug.new
    benazepril_amlodipine.medication_name = "benazepril/amlodipine"
    benazepril_amlodipine.brand_name = "Lotrel"
    benazepril_amlodipine.category = "restricted"
    benazepril_amlodipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    benazepril_amlodipine.study_id = study1.id
    benazepril_amlodipine.save!


    enalapril_felodipine = Drug.new
    enalapril_felodipine.medication_name = "enalapril/felodipine"
    enalapril_felodipine.brand_name = "Lexxel"
    enalapril_felodipine.category = "restricted"
    enalapril_felodipine.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    enalapril_felodipine.study_id = study1.id
    enalapril_felodipine.save!


    trandolapril_verapamil = Drug.new
    trandolapril_verapamil.medication_name = "trandolapril/verapamil"
    trandolapril_verapamil.brand_name = "Tarka"
    trandolapril_verapamil.category = "restricted"
    trandolapril_verapamil.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    trandolapril_verapamil.study_id = study1.id
    trandolapril_verapamil.save!


    captopril = Drug.new
    captopril.medication_name = "captopril"
    captopril.brand_name = "Capoten"
    captopril.category = "restricted"
    captopril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    captopril.study_id = study1.id
    captopril.save!


    enalapril = Drug.new
    enalapril.medication_name = "enalapril"
    enalapril.brand_name = "Vasotec"
    enalapril.category = "restricted"
    enalapril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    enalapril.study_id = study1.id
    enalapril.save!


    lisinopril = Drug.new
    lisinopril.medication_name = "lisinopril"
    lisinopril.brand_name = "Prinivil, Zestril"
    lisinopril.category = "restricted"
    lisinopril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    lisinopril.study_id = study1.id
    lisinopril.save!


    benazepril = Drug.new
    benazepril.medication_name = "benazepril"
    benazepril.brand_name = "Lotensin"
    benazepril.category = "restricted"
    benazepril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    benazepril.study_id = study1.id
    benazepril.save!


    quinapril = Drug.new
    quinapril.medication_name = "quinapril"
    quinapril.brand_name = "Accupril"
    quinapril.category = "restricted"
    quinapril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    quinapril.study_id = study1.id
    quinapril.save!


    moexipril = Drug.new
    moexipril.medication_name = "moexipril"
    moexipril.brand_name = "Univasc"
    moexipril.category = "restricted"
    moexipril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    moexipril.study_id = study1.id
    moexipril.save!


    perindopril = Drug.new
    perindopril.medication_name = "perindopril"
    perindopril.brand_name = "Aceon"
    perindopril.category = "restricted"
    perindopril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    perindopril.study_id = study1.id
    perindopril.save!


    trandolapril = Drug.new
    trandolapril.medication_name = "trandolapril"
    trandolapril.brand_name = "Mavik"
    trandolapril.category = "restricted"
    trandolapril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    trandolapril.study_id = study1.id
    trandolapril.save!


    ramipril = Drug.new
    ramipril.medication_name = "ramipril"
    ramipril.brand_name = "Altace"
    ramipril.category = "restricted"
    ramipril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    ramipril.study_id = study1.id
    ramipril.save!


    fosinopril = Drug.new
    fosinopril.medication_name = "fosinopril"
    fosinopril.brand_name = "Monopril"
    fosinopril.category = "restricted"
    fosinopril.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    fosinopril.study_id = study1.id
    fosinopril.save!


    benazepril_hydrochloro_thiazide_HCTZ = Drug.new
    benazepril_hydrochloro_thiazide_HCTZ.medication_name = "benazepril/hydrochloro-thiazide (HCTZ)"
    benazepril_hydrochloro_thiazide_HCTZ.brand_name = "Lotensin HCT"
    benazepril_hydrochloro_thiazide_HCTZ.category = "restricted"
    benazepril_hydrochloro_thiazide_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    benazepril_hydrochloro_thiazide_HCTZ.study_id = study1.id
    benazepril_hydrochloro_thiazide_HCTZ.save!


    captopril_HCTZ = Drug.new
    captopril_HCTZ.medication_name = "captopril/HCTZ"
    captopril_HCTZ.brand_name = "Capozide"
    captopril_HCTZ.category = "restricted"
    captopril_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    captopril_HCTZ.study_id = study1.id
    captopril_HCTZ.save!


    enalapril_HCTZ = Drug.new
    enalapril_HCTZ.medication_name = "enalapril_HCTZ"
    enalapril_HCTZ.brand_name = "Vaseretic"
    enalapril_HCTZ.category = "restricted"
    enalapril_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    enalapril_HCTZ.study_id = study1.id
    enalapril_HCTZ.save!


    lisinopril_HCTZ = Drug.new
    lisinopril_HCTZ.medication_name = "lisinopril/HCTZ"
    lisinopril_HCTZ.brand_name = "Prinzide"
    lisinopril_HCTZ.category = "restricted"
    lisinopril_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    lisinopril_HCTZ.study_id = study1.id
    lisinopril_HCTZ.save!


    moexipril_HCTZ = Drug.new
    moexipril_HCTZ.medication_name = "moexipril/HCTZ"
    moexipril_HCTZ.brand_name = "Uniretic"
    moexipril_HCTZ.category = "restricted"
    moexipril_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    moexipril_HCTZ.study_id = study1.id
    moexipril_HCTZ.save!


    quinapril_HCTZ = Drug.new
    quinapril_HCTZ.medication_name = "quinapril/HCTZ"
    quinapril_HCTZ.brand_name = "Accuretic"
    quinapril_HCTZ.category = "restricted"
    quinapril_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    quinapril_HCTZ.study_id = study1.id
    quinapril_HCTZ.save!


    candesartan = Drug.new
    candesartan.medication_name = "candesartan"
    candesartan.brand_name = "Atacand"
    candesartan.category = "restricted"
    candesartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    candesartan.study_id = study1.id
    candesartan.save!


    eposartan = Drug.new
    eposartan.medication_name = "eposartan"
    eposartan.brand_name = "Teveten"
    eposartan.category = "restricted"
    eposartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    eposartan.study_id = study1.id
    eposartan.save!


    irbesartan = Drug.new
    irbesartan.medication_name = "irbesartan"
    irbesartan.brand_name = "Avapro"
    irbesartan.category = "restricted"
    irbesartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    irbesartan.study_id = study1.id
    irbesartan.save!


    losartan = Drug.new
    losartan.medication_name = "losartan"
    losartan.brand_name = "Cozaar"
    losartan.category = "restricted"
    losartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    losartan.study_id = study1.id
    losartan.save!


    olmesartan = Drug.new
    olmesartan.medication_name = "olmesartan"
    olmesartan.brand_name = "Benicar"
    olmesartan.category = "restricted"
    olmesartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    olmesartan.study_id = study1.id
    olmesartan.save!


    telmisartan = Drug.new
    telmisartan.medication_name = "telmisartan"
    telmisartan.brand_name = "Micardis"
    telmisartan.category = "restricted"
    telmisartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    telmisartan.study_id = study1.id
    telmisartan.save!


    valsartan = Drug.new
    valsartan.medication_name = "valsartan"
    valsartan.brand_name = "Diovan"
    valsartan.category = "restricted"
    valsartan.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    valsartan.study_id = study1.id
    valsartan.save!


    candesartan_hydrochloro_thiazide_HCTZ = Drug.new
    candesartan_hydrochloro_thiazide_HCTZ.medication_name = "candesartan/hydrochloro-thiazide (HCTZ)"
    candesartan_hydrochloro_thiazide_HCTZ.brand_name = "Atacand/HCT"
    candesartan_hydrochloro_thiazide_HCTZ.category = "restricted"
    candesartan_hydrochloro_thiazide_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    candesartan_hydrochloro_thiazide_HCTZ.study_id = study1.id
    candesartan_hydrochloro_thiazide_HCTZ.save!


    eposartan_HCTZ = Drug.new
    eposartan_HCTZ.medication_name = "eposartan/HCTZ"
    eposartan_HCTZ.brand_name = "Teveten/HCT"
    eposartan_HCTZ.category = "restricted"
    eposartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    eposartan_HCTZ.study_id = study1.id
    eposartan_HCTZ.save!


    irbesartan_HCTZ = Drug.new
    irbesartan_HCTZ.medication_name = "irbesartan/HCTZ"
    irbesartan_HCTZ.brand_name = "Avalide"
    irbesartan_HCTZ.category = "restricted"
    irbesartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    irbesartan_HCTZ.study_id = study1.id
    irbesartan_HCTZ.save!


    losartan_HCTZ = Drug.new
    losartan_HCTZ.medication_name = "losartan/HCTZ"
    losartan_HCTZ.brand_name = "Hyzaar"
    losartan_HCTZ.category = "restricted"
    losartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    losartan_HCTZ.study_id = study1.id
    losartan_HCTZ.save!


    Olmesartan_HCTZ = Drug.new
    Olmesartan_HCTZ.medication_name = "Olmesartan/HCTZ"
    Olmesartan_HCTZ.brand_name = "Benicar HCT"
    Olmesartan_HCTZ.category = "restricted"
    Olmesartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    Olmesartan_HCTZ.study_id = study1.id
    Olmesartan_HCTZ.save!


    telmisartan_HCTZ = Drug.new
    telmisartan_HCTZ.medication_name = "telmisartan_HCTZ"
    telmisartan_HCTZ.brand_name = "Micardis HCT"
    telmisartan_HCTZ.category = "restricted"
    telmisartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    telmisartan_HCTZ.study_id = study1.id
    telmisartan_HCTZ.save!


    valsartan_HCTZ = Drug.new
    valsartan_HCTZ.medication_name = "valsartan/HCTZ"
    valsartan_HCTZ.brand_name = "Diovan HCT"
    valsartan_HCTZ.category = "restricted"
    valsartan_HCTZ.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    valsartan_HCTZ.study_id = study1.id
    valsartan_HCTZ.save!


    nadolol = Drug.new
    nadolol.medication_name = "nadolol"
    nadolol.brand_name = "Corgard"
    nadolol.category = "restricted"
    nadolol.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    nadolol.study_id = study1.id
    nadolol.save!


    penbutolol_sulfate = Drug.new
    penbutolol_sulfate.medication_name = "penbutolol sulfate"
    penbutolol_sulfate.brand_name = "Levatol"
    penbutolol_sulfate.category = "restricted"
    penbutolol_sulfate.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    penbutolol_sulfate.study_id = study1.id
    penbutolol_sulfate.save!


    pindolol = Drug.new
    pindolol.medication_name = "pindolol"
    pindolol.brand_name = "Visken"
    pindolol.category = "restricted"
    pindolol.information = "Allowed provided that the dose has been stable for 30 days prior to randomization. During double-blind treatment period Subject will remain on the same dose throughout the duration of the trial."
    pindolol.study_id = study1.id
    pindolol.save!


    propranolol = Drug.new
    propranolol.medication_name = "propranolol"
    propranolol.brand_name = "Inderal,Innopran"
    propranolol.category = "restricted"
    propranolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    propranolol.study_id = study1.id
    propranolol.save!


    acebutolol = Drug.new
    acebutolol.medication_name = "acebutolol"
    acebutolol.brand_name = "Sectral"
    acebutolol.category = "restricted"
    acebutolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    acebutolol.study_id = study1.id
    acebutolol.save!


    atenolol = Drug.new
    atenolol.medication_name = "atenolol"
    atenolol.brand_name = "Tenormin"
    atenolol.category = "restricted"
    atenolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    atenolol.study_id = study1.id
    atenolol.save!


    betaxolol = Drug.new
    betaxolol.medication_name = "betaxolol"
    betaxolol.brand_name = "Kerlone"
    betaxolol.category = "restricted"
    betaxolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    betaxolol.study_id = study1.id
    betaxolol.save!


    bisoprolol_fumarate = Drug.new
    bisoprolol_fumarate.medication_name = "bisoprolol fumarate"
    bisoprolol_fumarate.brand_name = "Zebeta"
    bisoprolol_fumarate.category = "restricted"
    bisoprolol_fumarate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    bisoprolol_fumarate.study_id = study1.id
    bisoprolol_fumarate.save!


    metoprolol_succinate = Drug.new
    metoprolol_succinate.medication_name = "metoprolol succinate"
    metoprolol_succinate.brand_name = "Toprol XL"
    metoprolol_succinate.category = "restricted"
    metoprolol_succinate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    metoprolol_succinate.study_id = study1.id
    metoprolol_succinate.save!


    metoprolol_tartrate = Drug.new
    metoprolol_tartrate.medication_name = "metoprolol tartrate"
    metoprolol_tartrate.brand_name = "Lopressor"
    metoprolol_tartrate.category = "restricted"
    metoprolol_tartrate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    metoprolol_tartrate.study_id = study1.id
    metoprolol_tartrate.save!


    nebivolol = Drug.new
    nebivolol.medication_name = "nebivolol"
    nebivolol.brand_name = "Bystolic"
    nebivolol.category = "restricted"
    nebivolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    nebivolol.study_id = study1.id
    nebivolol.save!


    carvedilol = Drug.new
    carvedilol.medication_name = "carvedilol"
    carvedilol.brand_name = "Coreg"
    carvedilol.category = "restricted"
    carvedilol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    carvedilol.study_id = study1.id
    carvedilol.save!


    labetalol = Drug.new
    labetalol.medication_name = "labetalol"
    labetalol.brand_name = "Trandate, Normodyne"
    labetalol.category = "restricted"
    labetalol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    labetalol.study_id = study1.id
    labetalol.save!


    timolol_maleate = Drug.new
    timolol_maleate.medication_name = "timolol maleate"
    timolol_maleate.brand_name = "Blocadren"
    timolol_maleate.category = "restricted"
    timolol_maleate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    timolol_maleate.study_id = study1.id
    timolol_maleate.save!


    atenolol_chlorthalidone = Drug.new
    atenolol_chlorthalidone.medication_name = "atenolol/chlorthalidone"
    atenolol_chlorthalidone.brand_name = "Tenoretic"
    atenolol_chlorthalidone.category = "restricted"
    atenolol_chlorthalidone.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    atenolol_chlorthalidone.study_id = study1.id
    atenolol_chlorthalidone.save!


    nadolol_bendroflu_methiazide = Drug.new
    nadolol_bendroflu_methiazide.medication_name = "nadolol/bendroflu-methiazide"
    nadolol_bendroflu_methiazide.brand_name = "Corzide"
    nadolol_bendroflu_methiazide.category = "restricted"
    nadolol_bendroflu_methiazide.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    nadolol_bendroflu_methiazide.study_id = study1.id
    nadolol_bendroflu_methiazide.save!


    bisoprolol_HCTZ = Drug.new
    bisoprolol_HCTZ.medication_name = "bisoprolol/HCTZ"
    bisoprolol_HCTZ.brand_name = "Ziac"
    bisoprolol_HCTZ.category = "restricted"
    bisoprolol_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    bisoprolol_HCTZ.study_id = study1.id
    bisoprolol_HCTZ.save!


    propranolol_HCTZ = Drug.new
    propranolol_HCTZ.medication_name = "propranolol/HCTZ"
    propranolol_HCTZ.brand_name = "Inderide"
    propranolol_HCTZ.category = "restricted"
    propranolol_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    propranolol_HCTZ.study_id = study1.id
    propranolol_HCTZ.save!


    metoprolol_tartrate_HCTZ = Drug.new
    metoprolol_tartrate_HCTZ.medication_name = "metoprolol tartrate/HCTZ"
    metoprolol_tartrate_HCTZ.brand_name = "Lopressor HCT"
    metoprolol_tartrate_HCTZ.category = "restricted"
    metoprolol_tartrate_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    metoprolol_tartrate_HCTZ.study_id = study1.id
    metoprolol_tartrate_HCTZ.save!


    timolol_maleate_HCTZ = Drug.new
    timolol_maleate_HCTZ.medication_name = "timolol maleate/HCTZ"
    timolol_maleate_HCTZ.brand_name = "Timolide"
    timolol_maleate_HCTZ.category = "restricted"
    timolol_maleate_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    timolol_maleate_HCTZ.study_id = study1.id
    timolol_maleate_HCTZ.save!


    Propranolol = Drug.new
    Propranolol.medication_name = "Propranolol"
    Propranolol.brand_name = "Inderal"
    Propranolol.category = "restricted"
    Propranolol.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    Propranolol.study_id = study1.id
    Propranolol.save!


    clonidine_hcl = Drug.new
    clonidine_hcl.medication_name = "clonidine hcl"
    clonidine_hcl.brand_name = "Catapres, Catapress-TTS"
    clonidine_hcl.category = "restricted"
    clonidine_hcl.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    clonidine_hcl.study_id = study1.id
    clonidine_hcl.save!


    guanabenz_acetate = Drug.new
    guanabenz_acetate.medication_name = "guanabenz acetate"
    guanabenz_acetate.brand_name = "Wytensin"
    guanabenz_acetate.category = "restricted"
    guanabenz_acetate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    guanabenz_acetate.study_id = study1.id
    guanabenz_acetate.save!


    guanfacine_hcl = Drug.new
    guanfacine_hcl.medication_name = "guanfacine hcl"
    guanfacine_hcl.brand_name = "Tenex"
    guanfacine_hcl.category = "restricted"
    guanfacine_hcl.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    guanfacine_hcl.study_id = study1.id
    guanfacine_hcl.save!


    methyldopa = Drug.new
    methyldopa.medication_name = "methyldopa"
    methyldopa.brand_name = "Aldomet"
    methyldopa.category = "restricted"
    methyldopa.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    methyldopa.study_id = study1.id
    methyldopa.save!


    doxazosin_mesylate = Drug.new
    doxazosin_mesylate.medication_name = "doxazosin mesylate"
    doxazosin_mesylate.brand_name = "Cardura"
    doxazosin_mesylate.category = "restricted"
    doxazosin_mesylate.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    doxazosin_mesylate.study_id = study1.id
    doxazosin_mesylate.save!


    prazosin = Drug.new
    prazosin.medication_name = "prazosin"
    prazosin.brand_name = "Minipress"
    prazosin.category = "restricted"
    prazosin.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    prazosin.study_id = study1.id
    prazosin.save!


    terazosin = Drug.new
    terazosin.medication_name = "terazosin"
    terazosin.brand_name = "Hytrin"
    terazosin.category = "restricted"
    terazosin.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    terazosin.study_id = study1.id
    terazosin.save!


    methyldopa_HCTZ = Drug.new
    methyldopa_HCTZ.medication_name = "methyldopa/HCTZ"
    methyldopa_HCTZ.brand_name = "Aldoril"
    methyldopa_HCTZ.category = "restricted"
    methyldopa_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    methyldopa_HCTZ.study_id = study1.id
    methyldopa_HCTZ.save!


    reserpine_chlorothiazide = Drug.new
    reserpine_chlorothiazide.medication_name = "reserpine/chlorothiazide"
    reserpine_chlorothiazide.brand_name = "Diupres"
    reserpine_chlorothiazide.category = "restricted"
    reserpine_chlorothiazide.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    reserpine_chlorothiazide.study_id = study1.id
    reserpine_chlorothiazide.save!


    reserpine_HCTZ = Drug.new
    reserpine_HCTZ.medication_name = "reserpine/HCTZ"
    reserpine_HCTZ.brand_name = "Hydropres"
    reserpine_HCTZ.category = "restricted"
    reserpine_HCTZ.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    reserpine_HCTZ.study_id = study1.id
    reserpine_HCTZ.save!


    hydralazine = Drug.new
    hydralazine.medication_name = "hydralazine"
    hydralazine.brand_name = "Apresoline"
    hydralazine.category = "restricted"
    hydralazine.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    hydralazine.study_id = study1.id
    hydralazine.save!


    minoxidil = Drug.new
    minoxidil.medication_name = "minoxidil"
    minoxidil.brand_name = "Loniten"
    minoxidil.category = "restricted"
    minoxidil.information = "Prior to randomization for treatment of akathisia or tremor - 7 day washout For treatment of heart 
    disease: Allowed provided the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day. During double-blind treatment period for treatment of akathisia or tremor: max dose of 20 mg 3 times daily (total 60 mg/day). For treatment of heart disease: may remain on stable pretrial dose as needed throughout the trial as long as total dose does not exceed 60 mg/day. Must not be administered within 12 hours prior to trial assessment. Delay scale administration until 12 hours have elapsed if possible; however if delaying administration of efficacy and safety scales is not feasible, scales should still be administered and the use of propranolol documented (including a notation of the drug name, dose,and time administered on the eCRF)."
    minoxidil.study_id = study1.id
    minoxidil.save! 
    
    st_john_wort = Drug.new
    st_john_wort.medication_name = ""
    st_john_wort.brand_name = "St.John Wort"
    st_john_wort.category= "prohibited"
    st_john_wort.information = "Nutritional Supplements and Nonprescription Herbal Preparations (with CNS effects). Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    st_john_wort.study_id = study1.id
    st_john_wort.save!
     
    omega_3_fatty_acids = Drug.new
  omega_3_fatty_acids.medication_name = ""  
    omega_3_fatty_acids.brand_name = "Omega-3 fatty acids"
    omega_3_fatty_acids.category = "prohibited"
    omega_3_fatty_acids.information = "Nutritional Supplements and Nonprescription Herbal Preparations (with CNS effects). Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
    omega_3_fatty_acids.study_id = study1.id
    omega_3_fatty_acids.save!
  
     kava_extracts = Drug.new
       kava_extracts.medication_name = ""
     kava_extracts.brand_name = "Kava extracts"
     kava_extracts.category = "prohibited"
     kava_extracts.information =  "Nutritional Supplements and Nonprescription Herbal Preparations (with CNS effects). Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"  
     kava_extracts.study_id = study1.id
     kava_extracts.save!
#     
     gaba_supplements = Drug.new
       gaba_supplements.medication_name = ""
     gaba_supplements.brand_name = "GABA supplements (gamma-aminobutyric acid)"
     gaba_supplements.category = "prohibited"
     gaba_supplements.information =  "Nutritional Supplements and Nonprescription Herbal Preparations (with CNS effects). Prior to randomization - 7 day washout During double-blind treatment period - Prohibited"
     gaba_supplements.study_id = study1.id 
     gaba_supplements.save!  
#        
       
   end
end