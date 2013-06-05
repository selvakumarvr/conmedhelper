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



    clozapine = Drug.new
    clozapine.medication_name = "clozapine" 
    clozapine.brand_name = "clozaril"
    clozapine.category = "prohibited"
    clozapine.information = "Prior to randomization 7 day wash out except clozaril(30 days) and depot long actinginjectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    clozapine.study_id = study1.id 
    clozapine.save!



    iloperidone = Drug.new
    iloperidone.medication_name = "iloperidone" 
    iloperidone.brand_name = "fanapt"
    iloperidone.category = "prohibited"
    iloperidone.information = "Prior to randomization 7 day wash out except clozaril (30 days) and depot longacting injectable(1.5 unit dosing interval ) during double blind treatment period all antipsychoticsprohibited."
    iloperidone.study_id = study1.id
    iloperidone.save!



    fluphenazine = Drug.new
    fluphenazine.medication_name = "fluphenazine" 
    fluphenazine.brand_name = "fluphenazine (generic only)"
    fluphenazine.category = "prohibited"
    fluphenazine.information = "Prior to randomization 7 day wash out except clozaril(30 days) and depot longacting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychoticsprohibited."
    fluphenazine.study_id = study1.id
    fluphenazine.save!



    ziprasidone = Drug.new
    ziprasidone.medication_name = "ziprasidone" 
    ziprasidone.brand_name = "geodon"
    ziprasidone.category = "prohibited"
    ziprasidone.information = "prior to randomization 7 day wash out except clozaril (30 days) and depot longacting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychoticsprohibited."
    ziprasidone.study_id = study1.id
    ziprasidone.save!



    haloperidol = Drug.new
    haloperidol.medication_name = "haloperidol" 
    haloperidol.brand_name = "haldol"
    haloperidol.category = "prohibited"
    haloperidol.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot longacting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychoticsprohibited."
    haloperidol.study_id = study1.id
    haloperidol.save!



    paliperidone = Drug.new
    paliperidone.medication_name = "paliperidone" 
    paliperidone.brand_name = "invega"
    paliperidone.category = "prohibited"
    paliperidone.information = "prior to randomization 7 day wash out except clozaril (30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    paliperidone.study_id = study1.id 
    paliperidone.save!



    loxapine = Drug.new
    loxapine.medication_name = "loxapine" 
    loxapine.brand_name = "loxitane"
    loxapine.category = "prohibited"
    loxapine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    loxapine.study_id = study1.id 
    loxapine.save!



    molindone = Drug.new
    molindone.medication_name = "molindone" 
    molindone.brand_name = "moban"
    molindone.category = "prohibited"
    molindone.information = "prior to randomization 7 day wash out except clozaril (30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    molindone.study_id = study1.id 
    molindone.save!



    thiothixene = Drug.new
    thiothixene.medication_name = "thiothixene" 
    thiothixene.brand_name = "navane"
    thiothixene.category = "prohibited"
    thiothixene.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    thiothixene.study_id = study1.id 
    thiothixene.save!



    pimozide = Drug.new
    pimozide.medication_name = "pimozide" 
    pimozide.brand_name = "orap (for tourette's syndrome)"
    pimozide.category = "prohibited"
    pimozide.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    pimozide.study_id = study1.id 
    pimozide.save!



    perphenazine = Drug.new
    perphenazine.medication_name = "perphenazine" 
    perphenazine.brand_name = "perphenazine (generic only)"
    perphenazine.category = "prohibited"
    perphenazine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    perphenazine.study_id = study1.id 
    perphenazine.save!



    risperidone = Drug.new
    risperidone.medication_name = "risperidone" 
    risperidone.brand_name = "risperdal"
    risperidone.category = "prohibited"
    risperidone.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    risperidone.study_id = study1.id 
    risperidone.save!



    quetiapine = Drug.new
    quetiapine.medication_name = "quetiapine" 
    quetiapine.brand_name = "seroquel"
    quetiapine.category = "prohibited"
    quetiapine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    quetiapine.study_id = study1.id 
    quetiapine.save!



    fluoritine_olanzapine = Drug.new
    fluoritine_olanzapine.medication_name = "fluoritine olanzapine" 
    fluoritine_olanzapine.brand_name = "symbyax"
    fluoritine_olanzapine.category = "prohibited"
    quetiapine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    fluoritine_olanzapine.study_id = study1.id 
    fluoritine_olanzapine.save!



    trifluoperazine = Drug.new
    trifluoperazine.medication_name = "trifluoperazine" 
    trifluoperazine.brand_name = "stelazine"
    trifluoperazine.category = "prohibited"
    trifluoperazine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable(1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    trifluoperazine.study_id = study1.id 
    trifluoperazine.save!



    thioridazine = Drug.new
    thioridazine.medication_name = "thioridazine" 
    thioridazine.brand_name = "thioridazine (generic only)"
    thioridazine.category = "prohibited"
    thioridazine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable(1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    thioridazine.study_id = study1.id 
    thioridazine.save!



    chlorpromazine = Drug.new
    chlorpromazine.medication_name = "chlorpromazine" 
    chlorpromazine.brand_name = "thorazine"
    chlorpromazine.category = "prohibited"
    chlorpromazine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable(1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    chlorpromazine.study_id = study1.id 
    chlorpromazine.save!



    olanzapine = Drug.new
    olanzapine.medication_name = "olanzapine" 
    olanzapine.brand_name = "zyprexa"
    olanzapine.category = "prohibited"
    olanzapine.information = "prior to randomization 7 day wash out except clozaril(30 days) and depot long acting injectable (1.5 unit dosing interval ) during double blind treatment period all antipsychotics prohibited."
    olanzapine.study_id = study1.id 
    olanzapine.save!



    clomipramine = Drug.new
    clomipramine.medication_name = "clomipramine" 
    clomipramine.brand_name = "anafranil (tricyclic)"
    clomipramine.category = "restricted"
    clomipramine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    clomipramine.study_id = study1.id 
    clomipramine.save!



    amoxapine = Drug.new
    amoxapine.medication_name = "amoxapine" 
    amoxapine.brand_name = "asendin"
    amoxapine.category = "restricted"
    amoxapine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    amoxapine.study_id = study1.id
    amoxapine.save!



    nortriptyline = Drug.new
    nortriptyline.medication_name = "nortriptyline" 
    nortriptyline.brand_name = "aventyl (tricyclic)"
    nortriptyline.category = "restricted"
    nortriptyline.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    nortriptyline.study_id = study1.id
    nortriptyline.save!



    citalopram = Drug.new
    citalopram.medication_name = "citalopram" 
    citalopram.brand_name = "celexa (ssri)"
    citalopram.category = "restricted"
    citalopram.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    citalopram.study_id = study1.id
    citalopram.save!



    duloxetine = Drug.new
    duloxetine.medication_name = "duloxetine" 
    duloxetine.brand_name = "cymbalta (snri)"
    duloxetine.category = "prohibited"
    duloxetine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    duloxetine.study_id = study1.id
    duloxetine.save!



    trazodone = Drug.new
    trazodone.medication_name = "trazodone" 
    trazodone.brand_name = "desyrel"
    trazodone.category = "restricted"
    trazodone.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    trazodone.study_id = study1.id  
    trazodone.save!



    venlafaxine = Drug.new
    venlafaxine.medication_name = "venlafaxine" 
    venlafaxine.brand_name = "effexor (snri)"
    venlafaxine.category = "restricted"
    venlafaxine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    venlafaxine.study_id = study1.id
    venlafaxine.save!



    amitriptyline = Drug.new
    amitriptyline.medication_name = "amitriptyline" 
    amitriptyline.brand_name = "elavil (tricyclic)"
    amitriptyline.category = "restricted"
    amitriptyline.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    amitriptyline.study_id = study1.id
    amitriptyline.save!



    selegiline = Drug.new
    selegiline.medication_name = "selegiline" 
    selegiline.brand_name = "emsam"
    selegiline.category = "restricted"
    selegiline.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    selegiline.study_id = study1.id
    selegiline.save!



    escitalopram = Drug.new
    escitalopram.medication_name = "escitalopram"
    escitalopram.brand_name = "lexapro (ssri)"
    escitalopram.category = "restricted"
    escitalopram.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    escitalopram.study_id = study1.id
    escitalopram.save!



    maprotiline = Drug.new
    maprotiline.medication_name = "maprotiline" 
    maprotiline.brand_name = "ludiomil (tricyclic)"
    maprotiline.category = "restricted"
    maprotiline.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    maprotiline.study_id = study1.id
    maprotiline.save!



    fluvoxamine = Drug.new
    fluvoxamine.medication_name = "fluvoxamine" 
    fluvoxamine.brand_name = "luvox (ssri)"
    fluvoxamine.category = "restricted"
    fluvoxamine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    fluvoxamine.study_id = study1.id  
    fluvoxamine.save!



    isocarboxazid = Drug.new
    isocarboxazid.medication_name = "isocarboxazid" 
    isocarboxazid.brand_name = "marplan (maoi)"
    isocarboxazid.category = "restricted"
    isocarboxazid.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    isocarboxazid.study_id = study1.id
    isocarboxazid.save!



    phenelzine = Drug.new
    phenelzine.medication_name = "phenelzine" 
    phenelzine.brand_name = "nardil (maoi)"
    phenelzine.category = "restricted"
    phenelzine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    phenelzine.study_id = study1.id
    phenelzine.save!



    desipramine = Drug.new
    desipramine.medication_name = "desipramine" 
    desipramine.brand_name = "norpramin (tricyclic)"
    desipramine.category = "restricted"
    phenelzine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    desipramine.study_id = study1.id
    desipramine.save!



    nortriptyline = Drug.new
    nortriptyline.medication_name = "nortriptyline" 
    nortriptyline.brand_name = "pamelor (tricyclic)"
    nortriptyline.category = "restricted"
    nortriptyline.information = "allowed prior to randomization allowed provided tha dose has been stable for 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    nortriptyline.study_id = study1.id
    nortriptyline.save!



    tranylcypromine = Drug.new
    tranylcypromine.medication_name = "tranylcypromine" 
    tranylcypromine.brand_name = "parnate (maoi)"
    tranylcypromine.category = "restricted"
    tranylcypromine.information = "allowed prior to randomization allowed provided tha dose has been stable for30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    tranylcypromine.study_id = study1.id
    tranylcypromine.save!



    paroxetine = Drug.new
    paroxetine.medication_name = "paroxetine" 
    paroxetine.brand_name = "paxil (ssri)"
    paroxetine.category = "prohibited"
    paroxetine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    paroxetine.study_id = study1.id
    paroxetine.save!



    paroxetine_mesylate = Drug.new
    paroxetine_mesylate.medication_name = "paroxetine mesylate" 
    paroxetine_mesylate.brand_name = "pexeva (ssri)"
    paroxetine_mesylate.category = "prohibited"
    paroxetine_mesylate.information = "allowed prior to randomization allowed provided tha dose has been stablefor 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    paroxetine_mesylate.study_id = study1.id
    paroxetine_mesylate.save!



    desvenlafaxine = Drug.new
    desvenlafaxine.medication_name = "desvenlafaxine" 
    desvenlafaxine.brand_name = "pristiq (snri)"
    desvenlafaxine.category = "restricted"
    desvenlafaxine.information = "allowed prior to randomization allowed provided tha dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    desvenlafaxine.study_id = study1.id
    desvenlafaxine.save!



    fluoxetine3 = Drug.new
    fluoxetine3.medication_name = "fluoxetine" 
    fluoxetine3.brand_name = "prozac (ssri)"
    fluoxetine3.category = "prohibited"
    fluoxetine3.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    fluoxetine3.study_id = study1.id
    fluoxetine3.save!
    


    mirtazapine = Drug.new
    mirtazapine.medication_name = "mirtazapine" 
    mirtazapine.brand_name = "remeron"
    mirtazapine.category = "restricted"
    mirtazapine.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    mirtazapine.study_id = study1.id 
    mirtazapine.save!



    fluoxetine2 = Drug.new
    fluoxetine2.medication_name = "fluoxetine" 
    fluoxetine2.brand_name = "sarafem (ssri)"
    fluoxetine2.category = "restricted"
    fluoxetine2.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    fluoxetine2.study_id = study1.id 
    fluoxetine2.save!
    


    doxepin = Drug.new
    doxepin.medication_name = "doxepin" 
    doxepin.brand_name = "sinequan (tricyclic)"
    doxepin.category = "restricted"
    doxepin.information = "allowed prior to randomization allowed provided the dose has been stable for 30 daysprior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    doxepin.study_id = study1.id
    doxepin.save!



    trimipramine = Drug.new
    trimipramine.medication_name = "trimipramine" 
    trimipramine.brand_name = "surmontil (tricyclic)"
    trimipramine.category = "restricted"
    trimipramine.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    trimipramine.study_id = study1.id
    trimipramine.save!



    imipramine = Drug.new
    imipramine.medication_name = "imipramine" 
    imipramine.brand_name = "tofranil (tricyclic)"
    imipramine.category = "restricted"
    imipramine.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    imipramine.study_id = study1.id
    imipramine.save!



    imipramine_pamoate = Drug.new
    imipramine_pamoate.medication_name = "imipramine pamoate" 
    imipramine_pamoate.brand_name = "tofranil-pm (tricyclic)"
    imipramine_pamoate.category = "restricted"
    imipramine_pamoate.information = "allowed prior to randomization allowed provided the dose has been stablefor 30 days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    imipramine_pamoate.study_id = study1.id
    imipramine_pamoate.save!



    protriptyline = Drug.new
    protriptyline.medication_name = "protriptyline" 
    protriptyline.brand_name = "vivactil (tricyclic)"
    protriptyline.category = "restricted"
    protriptyline.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    protriptyline.study_id = study1.id
    protriptyline.save!



    bupropion = Drug.new
    bupropion.medication_name = "bupropion" 
    bupropion.brand_name = "wellbutrin"
    bupropion.category = "restricted"
    bupropion.information = "allowed prior to randomization allowed provided the dose has been stable for 30 daysprior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    bupropion.study_id = study1.id
    bupropion.save!



    sertraline = Drug.new
    sertraline.medication_name = "sertraline" 
    sertraline.brand_name = "zoloft (ssri)"
    sertraline.category = "restricted"
    sertraline.information = "allowed prior to randomization allowed provided the dose has been stable for 30days prior to randomization except {eymbaua pxil prozac}, paxeva during double blind treatment phase subject will remain on same dose throughout the study."
    sertraline.study_id = study1.id
    sertraline.save!



    divalproex_sodium_valproic_acid = Drug.new
    divalproex_sodium_valproic_acid.medication_name = "divalproex sodium (valproic acid)" 
    divalproex_sodium_valproic_acid.brand_name = "depakote"
    divalproex_sodium_valproic_acid.category = "prohibited"
    divalproex_sodium_valproic_acid.information = "prior to randomization 7 day washout during double blind treatment period prohibited."
    divalproex_sodium_valproic_acid.study_id = study1.id 
    divalproex_sodium_valproic_acid.save!



    lithium_carbonate = Drug.new
    lithium_carbonate.medication_name = "lithium carbonate" 
    lithium_carbonate.brand_name = "eskalith"
    lithium_carbonate.category = "prohibited"
    lithium_carbonate.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    lithium_carbonate.study_id = study1.id 
    lithium_carbonate.save!



    lamotrigine = Drug.new
    lamotrigine.medication_name = "lamotrigine" 
    lamotrigine.brand_name = "lamictal"
    lamotrigine.category = "prohibited"
    lamotrigine.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    lamotrigine.study_id = study1.id 
    lamotrigine.save!



    lithium_citrate = Drug.new
    lithium_citrate.medication_name = "lithium citrate" 
    lithium_citrate.brand_name = "lithium citrate (generic only)"
    lithium_citrate.category = "prohibited"
    lithium_citrate.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    lithium_citrate.study_id = study1.id 
    lithium_citrate.save!



    lithium_carbonate = Drug.new
    lithium_carbonate.medication_name = "lithium carbonate" 
    lithium_carbonate.brand_name = "lithobid"
    lithium_carbonate.category = "prohibited"
    lithium_carbonate.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    lithium_carbonate.study_id = study1.id 
    lithium_carbonate.save!



    gabapentin = Drug.new
    gabapentin.medication_name = "gabapentin" 
    gabapentin.brand_name = "neurontin"
    gabapentin.category = "prohibited"
    gabapentin.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    gabapentin.study_id = study1.id 
    gabapentin.save!



    carbamazepine = Drug.new
    carbamazepine.medication_name = "carbamazepine" 
    carbamazepine.brand_name = "tegretol"
    carbamazepine.category = "prohibited"
    carbamazepine.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    carbamazepine.study_id = study1.id 
    carbamazepine.save!



    topiramate = Drug.new
    topiramate.medication_name = "topiramate" 
    topiramate.brand_name = "topamax"
    topiramate.category = "prohibited"
    topiramate.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    topiramate.study_id = study1.id 
    topiramate.save!



    oxcarbazepine = Drug.new
    oxcarbazepine.medication_name = "oxcarbazepine" 
    oxcarbazepine.brand_name = "trileptal"
    oxcarbazepine.category = "prohibited"
    oxcarbazepine.information = "prior to randomization 7 day washout during double blind treatment period prohibited"
    oxcarbazepine.study_id = study1.id 
    oxcarbazepine.save!



    lorazepam = Drug.new
    lorazepam.medication_name = "lorazepam" 
    lorazepam.brand_name = "ativan"
    lorazepam.category = "restricted"
    lorazepam.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    lorazepam.study_id = study1.id 
    lorazepam.save!



    colanazepam = Drug.new
    colanazepam.medication_name = "colanazepam" 
    colanazepam.brand_name = "klonopin"
    colanazepam.category = "restricted"
    colanazepam.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    colanazepam.study_id = study1.id 
    colanazepam.save!



    chlordiazepoxide = Drug.new
    chlordiazepoxide.medication_name = "chlordiazepoxide" 
    chlordiazepoxide.brand_name = "librium"
    chlordiazepoxide.category = "restricted"
    chlordiazepoxide.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    chlordiazepoxide.study_id = study1.id 
    chlordiazepoxide.save!



    oxazepam = Drug.new
    oxazepam.medication_name = "oxazepam" 
    oxazepam.brand_name = "oxazepam (generic only)"
    oxazepam.category = "restricted"
    oxazepam.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    oxazepam.study_id = study1.id 
    oxazepam.save!



    clorazepate = Drug.new
    clorazepate.medication_name = "clorazepate" 
    clorazepate.brand_name = "tranxene"
    clorazepate.category = "restricted"
    clorazepate.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    clorazepate.study_id = study1.id 
    clorazepate.save!



    diazepam = Drug.new
    diazepam.medication_name = "diazepam" 
    diazepam.brand_name = "valium"
    diazepam.category = "restricted"
    diazepam.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    diazepam.study_id = study1.id 
    diazepam.save!



    alprazolam = Drug.new
    alprazolam.medication_name = "alprazolam" 
    alprazolam.brand_name = "xanax"
    alprazolam.category = "restricted"
    alprazolam.information = "allowed but prior to randomization allowed but limited to 4 days/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect. during double_blind treatment period during the first 4 weeks of the randomized phase_(baseline to week 4 visit): allowed but limited to 4day/week with a maximum dose of 2 mg/day of lorazepam_(or_ equivalent)or less depending on dose limiting side effect.benzodiazepines must not be administered within 12 hours prior to the efficacy and safety assessment. after week 4 visit: prohibited intra muscular use not permitted at anytime benzodiazepIne should not be administered 12 hrs prior to assessment if possible combined use of ben 20 sleep agents for insomnia is not allowed."
    alprazolam.study_id = study1.id 
    alprazolam.save!



    zolpidem = Drug.new
    zolpidem.medication_name = "zolpidem" 
    zolpidem.brand_name = "ambien"
    zolpidem.category = "restricted"
    zolpidem.information = "Allowed But, Prior to Randomization, If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial does of the sleep agent may be continued as needed during the trial. If a sleep agent was not previously taken prior to screening and needs to be initiated, medication should be limited to a maximum dose of 5 mg/day of zolpidem (or equivalent). During Double-Blind Treatment Period, Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments. Combined use of benzodiazepines and non-benzodiazepine sleep agents for insomnia is not allowed."
    zolpidem.study_id = study1.id 
    zolpidem.save!



    zaleplon = Drug.new
    zaleplon.medication_name = "zaleplon" 
    zaleplon.brand_name = "sonata"
    zaleplon.category = "restricted"
    zaleplon.information = "Allowed But, Prior to Randomization, If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial does of the sleep agent may be continued as needed during the trial. If a sleep agent was not previously taken prior to screening and needs to be initiated, medication should be limited to a maximum dose of 5 mg/day of zolpidem (or equivalent). During Double-Blind Treatment Period, Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments. Combined use of benzodiazepines and non-benzodiazepine sleep agents for insomnia is not allowed."
    zaleplon.study_id = study1.id 
    zaleplon.save!



    eszopiclone = Drug.new
    eszopiclone.medication_name = "eszopiclone" 
    eszopiclone.brand_name = "lunesta"
    eszopiclone.category = "restricted"
    eszopiclone.information = "Allowed But, Prior to Randomization, If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial does of the sleep agent may be continued as needed during the trial. If a sleep agent was not previously taken prior to screening and needs to be initiated, medication should be limited to a maximum dose of 5 mg/day of zolpidem (or equivalent). During Double-Blind Treatment Period, Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments. Combined use of benzodiazepines and non-benzodiazepine sleep agents for insomnia is not allowed."
    eszopiclone.study_id = study1.id 
    eszopiclone.save!



    ramelteon = Drug.new
    ramelteon.medication_name = "ramelteon" 
    ramelteon.brand_name = "rozerem"
    ramelteon.category = "restricted"
    ramelteon.information = "Allowed But, Prior to Randomization, If a bedtime dose of a sleep agent for insomnia was taken prior to screening on a regular basis, a stable pretrial does of the sleep agent may be continued as needed during the trial. If a sleep agent was not previously taken prior to screening and needs to be initiated, medication should be limited to a maximum dose of 5 mg/day of zolpidem (or equivalent). During Double-Blind Treatment Period, Sleep agents must not be administered within 8 hours prior to the efficacy and safety assessments. Combined use of benzodiazepines and non-benzodiazepine sleep agents for insomnia is not allowed."
    ramelteon.study_id = study1.id 
    ramelteon.save!



    propoxyphene = Drug.new
    propoxyphene.medication_name = "propoxyphene" 
    propoxyphene.brand_name = "darvon"
    propoxyphene.category = "prohibited"
    propoxyphene.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    propoxyphene.study_id = study1.id 
    propoxyphene.save!



    a_methylfentanyl = Drug.new
    a_methylfentanyl.medication_name = "A-methylfentanyl" 
    a_methylfentanyl.brand_name = "alphamethylfentanyl"
    a_methylfentanyl.category = "restricted"
    a_methylfentanyl.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    a_methylfentanyl.study_id = study1.id 
    a_methylfentanyl.save!



    alfentanil = Drug.new
    alfentanil.medication_name = "alfentanil" 
    alfentanil.brand_name = "alfenta"
    alfentanil.category = "prohibited"
    alfentanil.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    alfentanil.study_id = study1.id 
    alfentanil.save!



    allylprodine = Drug.new
    allylprodine.medication_name = "allylprodine" 
    allylprodine.brand_name = "allylprodine"
    allylprodine.category = "prohibited"
    allylprodine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    allylprodine.study_id = study1.id 
    allylprodine.save!



    bezitramide = Drug.new
    bezitramide.medication_name = "bezitramide" 
    bezitramide.brand_name = "burgodin"
    bezitramide.category = "prohibited"
    bezitramide.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    bezitramide.study_id = study1.id 
    bezitramide.save!



    buprenorphine = Drug.new
    buprenorphine.medication_name = "buprenorphine" 
    buprenorphine.brand_name = "suboxone"
    buprenorphine.category = "prohibited"
    buprenorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    buprenorphine.study_id = study1.id 
    buprenorphine.save!



    butorphanol = Drug.new
    butorphanol.medication_name = "butorphanol" 
    butorphanol.brand_name = "stadol"
    butorphanol.category = "prohibited"
    butorphanol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    butorphanol.study_id = study1.id 
    butorphanol.save!



    dextromoramide = Drug.new
    dextromoramide.medication_name = "dextromoramide" 
    dextromoramide.brand_name = "dimorlin"
    dextromoramide.category = "prohibited"
    dextromoramide.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    dextromoramide.study_id = study1.id 
    dextromoramide.save!



    dezocine = Drug.new
    dezocine.medication_name = "dezocine" 
    dezocine.brand_name = "dalgan"
    dezocine.category = "prohibited"
    dezocine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    dezocine.study_id = study1.id 
    dezocine.save!



    diacetylmorphine = Drug.new
    diacetylmorphine.medication_name = "diacetylmorphine" 
    diacetylmorphine.brand_name = "heroin"
    diacetylmorphine.category = "prohibited"
    diacetylmorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    diacetylmorphine.study_id = study1.id 
    diacetylmorphine.save!



    dihydrocodeinone = Drug.new
    dihydrocodeinone.medication_name = "dihydrocodeinone" 
    dihydrocodeinone.brand_name = "vicodin"
    dihydrocodeinone.category = "prohibited"
    dihydrocodeinone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    dihydrocodeinone.study_id = study1.id 
    dihydrocodeinone.save!


    dimorphone = Drug.new
    dimorphone.medication_name = "dimorphone" 
    dimorphone.brand_name = "hydromorphone"
    dimorphone.category = "prohibited"
    dimorphone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    dimorphone.study_id = study1.id 
    dimorphone.save!



    diphenoxylate = Drug.new
    diphenoxylate.medication_name = "diphenoxylate" 
    diphenoxylate.brand_name = "lomotil"
    diphenoxylate.category = "prohibited"
    diphenoxylate.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    diphenoxylate.study_id = study1.id 
    diphenoxylate.save!



    dipipanone = Drug.new
    dipipanone.medication_name = "dipipanone" 
    dipipanone.brand_name = "diconal"
    dipipanone.category = "prohibited"
    dipipanone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    dipipanone.study_id = study1.id 
    dipipanone.save!



    etorphine = Drug.new
    etorphine.medication_name = "etorphine" 
    etorphine.brand_name = "immobilon"
    etorphine.category = "prohibited"
    etorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    etorphine.study_id = study1.id 
    etorphine.save!



    fentanyl = Drug.new
    fentanyl.medication_name = "fentanyl" 
    fentanyl.brand_name = "actiq"
    fentanyl.category = "prohibited"
    fentanyl.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    fentanyl.study_id = study1.id 
    fentanyl.save!



    ketobemidone = Drug.new
    ketobemidone.medication_name = "ketobemidone" 
    ketobemidone.brand_name = "ketorax"
    ketobemidone.category = "prohibited"
    ketobemidone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    ketobemidone.study_id = study1.id 
    ketobemidone.save!



    lefetamine = Drug.new
    lefetamine.medication_name = "lefetamine" 
    lefetamine.brand_name = "santenol"
    lefetamine.category = "prohibited"
    lefetamine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    lefetamine.study_id = study1.id 
    lefetamine.save!



    levacetylmethadol = Drug.new
    levacetylmethadol.medication_name = "levacetylmethadol" 
    levacetylmethadol.brand_name = "orlaam"
    levacetylmethadol.category = "prohibited"
    levacetylmethadol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    levacetylmethadol.study_id = study1.id 
    levacetylmethadol.save!



    levomethorphan = Drug.new
    levomethorphan.medication_name = "levomethorphan" 
    levomethorphan.brand_name = "levomethorphan"
    levomethorphan.category = "prohibited"
    levomethorphan.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    levomethorphan.study_id = study1.id 
    levomethorphan.save!



    levorphanol = Drug.new
    levorphanol.medication_name = "levorphanol" 
    levorphanol.brand_name = "levo-dromoran"
    levorphanol.category = "prohibited"
    levorphanol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    levorphanol.study_id = study1.id 
    levorphanol.save!


    loperamide = Drug.new
    loperamide.medication_name = "loperamide" 
    loperamide.brand_name = "imodium"
    loperamide.category = "prohibited"
    loperamide.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    loperamide.study_id = study1.id 
    loperamide.save!



    meperidine = Drug.new
    meperidine.medication_name = "meperidine" 
    meperidine.brand_name = "demerol"
    meperidine.category = "prohibited"
    meperidine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    meperidine.study_id = study1.id 
    meperidine.save!



    meptazinol = Drug.new
    meptazinol.medication_name = "meptazinol" 
    meptazinol.brand_name = "meptid"
    meptazinol.category = "prohibited"
    meptazinol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    meptazinol.study_id = study1.id 
    meptazinol.save!



    methadone = Drug.new
    methadone.medication_name = "methadone" 
    methadone.brand_name = "methadone"
    methadone.category = "prohibited"
    methadone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    methadone.study_id = study1.id 
    methadone.save!



    methylmorphine = Drug.new
    methylmorphine.medication_name = "methylmorphine" 
    methylmorphine.brand_name = "codeine"
    methylmorphine.category = "prohibited"
    methylmorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    methylmorphine.study_id = study1.id 
    methylmorphine.save!



    morphine = Drug.new
    morphine.medication_name = "morphine" 
    morphine.brand_name = "morphine"
    morphine.category = "prohibited"
    morphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    morphine.study_id = study1.id 
    morphine.save!



    nalbuphine = Drug.new
    nalbuphine.medication_name = "nalbuphine" 
    nalbuphine.brand_name = "nubain"
    nalbuphine.category = "prohibited"
    nalbuphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    nalbuphine.study_id = study1.id 
    nalbuphine.save!



    nalmefene = Drug.new
    nalmefene.medication_name = "nalmefene" 
    nalmefene.brand_name = "revex"
    nalmefene.category = "prohibited"
    nalmefene.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    nalmefene.study_id = study1.id 
    nalmefene.save!



    naloxone = Drug.new
    naloxone.medication_name = "naloxone" 
    naloxone.brand_name = "narcan"
    naloxone.category = "prohibited"
    naloxone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    naloxone.study_id = study1.id 
    naloxone.save!



    naltrexone = Drug.new
    naltrexone.medication_name = "naltrexone" 
    naltrexone.brand_name = "vivitrol"
    naltrexone.category = "prohibited"
    naltrexone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    naltrexone.study_id = study1.id 
    naltrexone.save!



    nicomorphine = Drug.new
    nicomorphine.medication_name = "nicomorphine" 
    nicomorphine.brand_name = "vilan"
    nicomorphine.category = "prohibited"
    nicomorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    nicomorphine.study_id = study1.id 
    nicomorphine.save!



    ohmefentanyl = Drug.new
    ohmefentanyl.medication_name = "ohmefentanyl" 
    ohmefentanyl.brand_name = "ohmefentanyl"
    ohmefentanyl.category = "prohibited"
    ohmefentanyl.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    ohmefentanyl.study_id = study1.id 
    ohmefentanyl.save!



    oripavine = Drug.new
    oripavine.medication_name = "oripavine" 
    oripavine.brand_name = "oripavine"
    oripavine.category = "prohibited"
    oripavine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    oripavine.study_id = study1.id 
    oripavine.save!



    oxycodone = Drug.new
    oxycodone.medication_name = "oxycodone" 
    oxycodone.brand_name = "oxycontin"
    oxycodone.category = "prohibited"
    oxycodone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    oxycodone.study_id = study1.id 
    oxycodone.save!



    oxymorphone = Drug.new
    oxymorphone.medication_name = "oxymorphone" 
    oxymorphone.brand_name = "opana"
    oxymorphone.category = "prohibited"
    oxymorphone.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    oxymorphone.study_id = study1.id 
    oxymorphone.save!



    papaver_somniferum = Drug.new
    papaver_somniferum.medication_name = "papaver somniferum" 
    papaver_somniferum.brand_name = "opium"
    papaver_somniferum.category = "prohibited"
    papaver_somniferum.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    papaver_somniferum.study_id = study1.id 
    papaver_somniferum.save!



    paramorphine = Drug.new
    paramorphine.medication_name = "paramorphine" 
    paramorphine.brand_name = "thebaine"
    paramorphine.category = "prohibited"
    paramorphine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    paramorphine.study_id = study1.id 
    paramorphine.save!



    pentazocine = Drug.new
    pentazocine.medication_name = "pentazocine" 
    pentazocine.brand_name = "talwin"
    pentazocine.category = "prohibited"
    pentazocine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    pentazocine.study_id = study1.id 
    pentazocine.save!



    phenazocine = Drug.new
    phenazocine.medication_name = "phenazocine" 
    phenazocine.brand_name = "narphen"
    phenazocine.category = "prohibited"
    phenazocine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    phenazocine.study_id = study1.id 
    phenazocine.save!



    piritramide = Drug.new
    piritramide.medication_name = "piritramide" 
    piritramide.brand_name = "dipidolor"
    piritramide.category = "prohibited"
    piritramide.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    piritramide.study_id = study1.id 
    piritramide.save!



    prodine = Drug.new
    prodine.medication_name = "prodine" 
    prodine.brand_name = "nisentil"
    prodine.category = "prohibited"
    prodine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    prodine.study_id = study1.id 
    prodine.save!



    remifentanil = Drug.new
    remifentanil.medication_name = "remifentanil" 
    remifentanil.brand_name = "ultiva"
    remifentanil.category = "prohibited"
    remifentanil.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    remifentanil.study_id = study1.id 
    remifentanil.save!



    sufentanil = Drug.new
    sufentanil.medication_name = "sufentanil" 
    sufentanil.brand_name = "sufenta"
    sufentanil.category = "prohibited"
    sufentanil.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    sufentanil.study_id = study1.id 
    sufentanil.save!



    tapentadol = Drug.new
    tapentadol.medication_name = "tapentadol" 
    tapentadol.brand_name = "nucynta"
    tapentadol.category = "prohibited"
    tapentadol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    tapentadol.study_id = study1.id 
    tapentadol.save!



    tilidine = Drug.new
    tilidine.medication_name = "tilidine" 
    tilidine.brand_name = "valoron"
    tilidine.category = "prohibited"
    tilidine.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    tilidine.study_id = study1.id 
    tilidine.save!



    tramadol = Drug.new
    tramadol.medication_name = "tramadol" 
    tramadol.brand_name = "ultram"
    tramadol.category = "prohibited"
    tramadol.information = "Prohibited unless permission is obtained from the medical monitor. Permission for opioid use may be considered for a documented and clinically appropriate indication (eg, episodic pain condition, tooth extraction) if prescribed at a medically appropriate dose and frequency."
    tramadol.study_id = study1.id 
    tramadol.save!



    benztropine = Drug.new
    benztropine.medication_name = "benztropine" 
    benztropine.brand_name = "cogentin"
    benztropine.category = "prohibited"
    benztropine.information = "Prior to Randomization 7 day washout, During double blind treatment period prohibited."
    benztropine.study_id = study1.id 
    benztropine.save!



    oxybutinin = Drug.new
    oxybutinin.medication_name = "oxybutinin" 
    oxybutinin.brand_name = "ditropan"
    oxybutinin.category = "prohibited"
    oxybutinin.information = "Prior to Randomization 7 day washout, During double blind treatment period prohibited."
    oxybutinin.study_id = study1.id 
    oxybutinin.save!



    tolterodine = Drug.new
    tolterodine.medication_name = "tolterodine" 
    tolterodine.brand_name = "detrol"
    tolterodine.category = "prohibited"
    tolterodine.information = "Prior to Randomization 7 day washout, During double blind treatment period prohibited."
    tolterodine.study_id = study1.id 
    tolterodine.save!



    diphenhydramine = Drug.new
    diphenhydramine.medication_name = "diphenhydramine" 
    diphenhydramine.brand_name = "benadryl"
    diphenhydramine.category = "prohibited"
    diphenhydramine.information = "Prior to Randomization 7 day washout, During double blind treatment period prohibited."
    diphenhydramine.study_id = study1.id 
    diphenhydramine.save!



    dimethydrinate = Drug.new
    dimethydrinate.medication_name = "dimethydrinate" 
    dimethydrinate.brand_name = "dramamine"
    dimethydrinate.category = "prohibited"
    dimethydrinate.information = "Prior to Randomization 7 day washout, During double blind treatment period prohibited."
    dimethydrinate.study_id = study1.id 
    dimethydrinate.save!



    propranolol = Drug.new
    propranolol.medication_name = "propranolol" 
    propranolol.brand_name = "inderal"
    propranolol.category = "restricted"
    propranolol.information = "Prior to Randomization, for treatment of akathisia or tremor: 7-day washout, for treatment of heart disease: allowed provided that the dose has been stable for 30 days prior to randomization and total dose does not exceed 60 mg/day, During double blind treatment period, For treatment of akathisia or tremor: maximum dose of 20 mg, 3 times daily (total of 60 mg/day). For treatment of heart disease: may remain on stable pretrial doses as needed throughout the trial, as long as the total dose does not exceed 60 mg/day. Propranolol must not be administered within 12 hours prior to a trial assessment."
    propranolol.study_id = study1.id 
    propranolol.save!



    varenicline = Drug.new
    varenicline.medication_name = "varenicline" 
    varenicline.brand_name = "chantix"
    varenicline.category = "prohibited"
    varenicline.information = "Prior to Randomization 7 day washout, During double blind treatment phase prohibited."
    varenicline.study_id = study1.id 
    varenicline.save!



    cebutolol = Drug.new
    cebutolol.medication_name = "cebutolol" 
    cebutolol.brand_name = "sectral"
    cebutolol.category = "restricted"
    cebutolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    cebutolol.study_id = study1.id 
    cebutolol.save!



    atenolol = Drug.new
    atenolol.medication_name = "atenolol" 
    atenolol.brand_name = "tenormin"
    atenolol.category = "restricted"
    atenolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    atenolol.study_id = study1.id 
    atenolol.save!



    betaxolol = Drug.new
    betaxolol.medication_name = "betaxolol" 
    betaxolol.brand_name = "kerlone"
    betaxolol.category = "restricted"
    betaxolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    betaxolol.study_id = study1.id 
    betaxolol.save!



    bisoprolol = Drug.new
    bisoprolol.medication_name = "bisoprolol" 
    bisoprolol.brand_name = "zebeta, ziac"
    bisoprolol.category = "restricted"
    bisoprolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    bisoprolol.study_id = study1.id 
    bisoprolol.save!


    carteolol = Drug.new
    carteolol.medication_name = "carteolol" 
    carteolol.brand_name = "cartrol"
    carteolol.category = "restricted"
    carteolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    carteolol.study_id = study1.id 
    carteolol.save!



    carvedilol = Drug.new
    carvedilol.medication_name = "carvedilol" 
    carvedilol.brand_name = "coreg"
    carvedilol.category = "restricted"
    carvedilol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    carvedilol.study_id = study1.id 
    carvedilol.save!



    labetalol = Drug.new
    labetalol.medication_name = "labetalol" 
    labetalol.brand_name = "normodyne, trandate"
    labetalol.category = "restricted"
    labetalol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    labetalol.study_id = study1.id 
    labetalol.save!



    metoprolol = Drug.new
    metoprolol.medication_name = "metoprolol" 
    metoprolol.brand_name = "lopressor, toprol"
    metoprolol.category = "restricted"
    metoprolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    metoprolol.study_id = study1.id 
    metoprolol.save!



    nadolol = Drug.new
    nadolol.medication_name = "nadolol" 
    nadolol.brand_name = "corgard"
    nadolol.category = "restricted"
    nadolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    nadolol.study_id = study1.id 
    nadolol.save!



    penbutolol = Drug.new
    penbutolol.medication_name = "penbutolol" 
    penbutolol.brand_name = "levatol"
    penbutolol.category = "restricted"
    penbutolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    penbutolol.study_id = study1.id 
    penbutolol.save!



    propranolol = Drug.new
    propranolol.medication_name = "propranolol" 
    propranolol.brand_name = "inderal, inderal la"
    propranolol.category = "restricted"
    propranolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    propranolol.study_id = study1.id 
    propranolol.save!



    timolol = Drug.new
    timolol.medication_name = "timolol" 
    timolol.brand_name = "blocadren"
    timolol.category = "restricted"
    timolol.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    timolol.study_id = study1.id 
    timolol.save!



    amlodipine = Drug.new
    amlodipine.medication_name = "amlodipine" 
    amlodipine.brand_name = "norvasc, caduet lotrel"
    amlodipine.category = "restricted"
    amlodipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    amlodipine.study_id = study1.id 
    amlodipine.save!



    diltiazem = Drug.new
    diltiazem.medication_name = "diltiazem" 
    diltiazem.brand_name = "cardizem, dilacor tiazac"
    diltiazem.category = "restricted"
    diltiazem.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    diltiazem.study_id = study1.id 
    diltiazem.save!



    felodipine = Drug.new
    felodipine.medication_name = "felodipine" 
    felodipine.brand_name = "plendil"
    felodipine.category = "restricted"
    felodipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    felodipine.study_id = study1.id 
    felodipine.save!



    isradipine = Drug.new
    isradipine.medication_name = "isradipine" 
    isradipine.brand_name = "dynacirc"
    isradipine.category = "restricted"
    isradipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    isradipine.study_id = study1.id 
    isradipine.save!



    nicardipine = Drug.new
    nicardipine.medication_name = "nicardipine" 
    nicardipine.brand_name = "cardene"
    nicardipine.category = "restricted"
    nicardipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    nicardipine.study_id = study1.id 
    nicardipine.save!



    nifedipine = Drug.new
    nifedipine.medication_name = "nifedipine" 
    nifedipine.brand_name = "procardia xl, adalat"
    nifedipine.category = "restricted"
    nifedipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    nifedipine.study_id = study1.id 
    nifedipine.save!



    nisoldipine = Drug.new
    nisoldipine.medication_name = "nisoldipine" 
    nisoldipine.brand_name = "sular"
    nisoldipine.category = "restricted"
    nisoldipine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    nisoldipine.study_id = study1.id 
    nisoldipine.save!


    verapamil_hydrochloride = Drug.new
    verapamil_hydrochloride.medication_name = "verapamil hydrochloride" 
    verapamil_hydrochloride.brand_name = "isoptin, calan, verelan, and covera"
    verapamil_hydrochloride.category = "restricted"
    verapamil_hydrochloride.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    verapamil_hydrochloride.study_id = study1.id 
    verapamil_hydrochloride.save!



    benazepril = Drug.new
    benazepril.medication_name = "benazepril" 
    benazepril.brand_name = "lotensin"
    benazepril.category = "restricted"
    benazepril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    benazepril.study_id = study1.id 
    benazepril.save!


    captopril = Drug.new
    captopril.medication_name = "captopril" 
    captopril.brand_name = "capoten"
    captopril.category = "restricted"
    captopril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    captopril.study_id = study1.id 
    captopril.save!


    enalapril = Drug.new
    enalapril.medication_name = "enalapril" 
    enalapril.brand_name = "vasotec, vaseretic"
    enalapril.category = "restricted"
    enalapril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    enalapril.study_id = study1.id 
    enalapril.save!


    fosinopril = Drug.new
    fosinopril.medication_name = "fosinopril" 
    fosinopril.brand_name = "monopril"
    fosinopril.category = "restricted"
    fosinopril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    fosinopril.study_id = study1.id 
    fosinopril.save!


    lisinopril = Drug.new
    lisinopril.medication_name = "lisinopril" 
    lisinopril.brand_name = "prinivil, zestril"
    lisinopril.category = "restricted"
    lisinopril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    lisinopril.study_id = study1.id 
    lisinopril.save!


    moexipril = Drug.new
    moexipril.medication_name = "moexipril" 
    moexipril.brand_name = "univasc"
    moexipril.category = "restricted"
    moexipril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    moexipril.study_id = study1.id 
    moexipril.save!


    quinapril = Drug.new
    quinapril.medication_name = "quinapril" 
    quinapril.brand_name = "accupril"
    quinapril.category = "restricted"
    quinapril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    quinapril.study_id = study1.id 
    quinapril.save!


    ramipril = Drug.new
    ramipril.medication_name = "ramipril" 
    ramipril.brand_name = "altace"
    ramipril.category = "restricted"
    ramipril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    ramipril.study_id = study1.id 
    ramipril.save!


    trandolapril = Drug.new
    trandolapril.medication_name = "trandolapril" 
    trandolapril.brand_name = "mavik"
    trandolapril.category = "restricted"
    trandolapril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    trandolapril.study_id = study1.id 
    trandolapril.save!


    candesartan = Drug.new
    candesartan.medication_name = "candesartan" 
    candesartan.brand_name = "atacand"
    candesartan.category = "restricted"
    candesartan.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    candesartan.study_id = study1.id 
    candesartan.save!


    irbesartan = Drug.new
    irbesartan.medication_name = "irbesartan" 
    irbesartan.brand_name = "avapro"
    irbesartan.category = "restricted"
    irbesartan.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    irbesartan.study_id = study1.id 
    irbesartan.save!


    losartan = Drug.new
    losartan.medication_name = "losartan" 
    losartan.brand_name = "cozaar"
    losartan.category = "restricted"
    losartan.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    losartan.study_id = study1.id 
    losartan.save!


    telmisartan = Drug.new
    telmisartan.medication_name = "telmisartan" 
    telmisartan.brand_name = "micardis"
    telmisartan.category = "restricted"
    telmisartan.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    telmisartan.study_id = study1.id 
    telmisartan.save!


    valsartan = Drug.new
    valsartan.medication_name = "valsartan" 
    valsartan.brand_name = "diovan"
    valsartan.category = "restricted"
    valsartan.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    valsartan.study_id = study1.id 
    valsartan.save!


    clonidine = Drug.new
    clonidine.medication_name = "clonidine" 
    clonidine.brand_name = "catapres"
    clonidine.category = "restricted"
    clonidine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    clonidine.study_id = study1.id 
    clonidine.save!


    doxazosin = Drug.new
    doxazosin.medication_name = "doxazosin" 
    doxazosin.brand_name = "cardura"
    doxazosin.category = "restricted"
    doxazosin.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    doxazosin.study_id = study1.id 
    doxazosin.save!


    guanabenz = Drug.new
    guanabenz.medication_name = "guanabenz" 
    guanabenz.brand_name = "wytensin"
    guanabenz.category = "restricted"
    guanabenz.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    guanabenz.study_id = study1.id 
    guanabenz.save!


    guanfacine= Drug.new
    guanfacine.medication_name = "guanfacine" 
    guanfacine.brand_name = "tenex"
    guanfacine.category = "restricted"
    guanfacine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    guanfacine.study_id = study1.id 
    guanfacine.save!


    hydralazine_hydrochloride = Drug.new
    hydralazine_hydrochloride.medication_name = "hydralazine hydrochloride" 
    hydralazine_hydrochloride.brand_name = "apresoline"
    hydralazine_hydrochloride.category = "restricted"
    hydralazine_hydrochloride.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    hydralazine_hydrochloride.study_id = study1.id 
    hydralazine_hydrochloride.save!


    methyldopa = Drug.new
    methyldopa.medication_name = "methyldopa" 
    methyldopa.brand_name = "aldomet"
    methyldopa.category = "restricted"
    methyldopa.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    methyldopa.study_id = study1.id 
    methyldopa.save!


    prazosin = Drug.new
    prazosin.medication_name = "alzheimers medications" 
    prazosin.brand_name = "minipress"
    prazosin.category = "restricted"
    prazosin.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    prazosin.study_id = study1.id 
    prazosin.save!

    prazosin = Drug.new
    prazosin.medication_name = "prazosin" 
    prazosin.brand_name = "minipress"
    prazosin.category = "restricted"
    prazosin.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    prazosin.study_id = study1.id 
    prazosin.save!

    reserpine = Drug.new
    reserpine.medication_name = "reserpine" 
    reserpine.brand_name = "serpasil"
    reserpine.category = "restricted"
    reserpine.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    reserpine.study_id = study1.id 
    reserpine.save!


    terazosin = Drug.new
    terazosin.medication_name = "terazosin" 
    terazosin.brand_name = "hytrin"
    terazosin.category = "restricted"
    terazosin.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    terazosin.study_id = study1.id 
    terazosin.save!


    amiloride_and_hydrochlorothiazide = Drug.new
    amiloride_and_hydrochlorothiazide.medication_name = "amiloride and hydrochlorothiazide" 
    amiloride_and_hydrochlorothiazide.brand_name = "moduretic"
    amiloride_and_hydrochlorothiazide.category = "restricted"
    amiloride_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    amiloride_and_hydrochlorothiazide.study_id = study1.id 
    amiloride_and_hydrochlorothiazide.save!


    amlodipine_and_benazepril = Drug.new
    amlodipine_and_benazepril.medication_name = "amlodipine and benazepril" 
    amlodipine_and_benazepril.brand_name = "lotrel"
    amlodipine_and_benazepril.category = "restricted"
    amlodipine_and_benazepril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    amlodipine_and_benazepril.study_id = study1.id 
    amlodipine_and_benazepril.save!


    atenolol_and_chlorthalidone = Drug.new
    atenolol_and_chlorthalidone.medication_name = "atenolol and chlorthalidone" 
    atenolol_and_chlorthalidone.brand_name = "tenoretic"
    atenolol_and_chlorthalidone.category = "restricted"
    atenolol_and_chlorthalidone.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    atenolol_and_chlorthalidone.study_id = study1.id 
    atenolol_and_chlorthalidone.save!


    benazepril_and_hydrochlorothiazide = Drug.new
    benazepril_and_hydrochlorothiazide.medication_name = "benazepril and hydrochlorothiazide" 
    benazepril_and_hydrochlorothiazide.brand_name = "lotensin hct"
    benazepril_and_hydrochlorothiazide.category = "restricted"
    benazepril_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    benazepril_and_hydrochlorothiazide.study_id = study1.id 
    benazepril_and_hydrochlorothiazide.save!


    bisoprolol_and_hydrochlorothiazide = Drug.new
    bisoprolol_and_hydrochlorothiazide.medication_name = "bisoprolol and hydrochlorothiazide" 
    bisoprolol_and_hydrochlorothiazide.brand_name = "ziac"
    bisoprolol_and_hydrochlorothiazide.category = "restricted"
    bisoprolol_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    bisoprolol_and_hydrochlorothiazide.study_id = study1.id 
    bisoprolol_and_hydrochlorothiazide.save!


    captopril_and_hydrochlorothiazide = Drug.new
    captopril_and_hydrochlorothiazide.medication_name = "captopril and hydrochlorothiazide" 
    captopril_and_hydrochlorothiazide.brand_name = "capozide"
    captopril_and_hydrochlorothiazide.category = "restricted"
    captopril_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    captopril_and_hydrochlorothiazide.study_id = study1.id 
    captopril_and_hydrochlorothiazide.save!


    enalapril_and_hydrochlorothiazide = Drug.new
    enalapril_and_hydrochlorothiazide.medication_name = "enalapril and hydrochlorothiazide" 
    enalapril_and_hydrochlorothiazide.brand_name = "vaseretic"
    enalapril_and_hydrochlorothiazide.category = "restricted"
    enalapril_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    enalapril_and_hydrochlorothiazide.study_id = study1.id 
    enalapril_and_hydrochlorothiazide.save!


    felodipine_and_enalapril = Drug.new
    felodipine_and_enalapril.medication_name = "felodipine and enalapril" 
    felodipine_and_enalapril.brand_name = "lexxel"
    felodipine_and_enalapril.category = "restricted"
    felodipine_and_enalapril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    felodipine_and_enalapril.study_id = study1.id 
    felodipine_and_enalapril.save!


    hydralazine_and_hydrochlorothiazide = Drug.new
    hydralazine_and_hydrochlorothiazide.medication_name = "hydralazine and hydrochlorothiazide" 
    hydralazine_and_hydrochlorothiazide.brand_name = "apresazide"
    hydralazine_and_hydrochlorothiazide.category = "restricted"
    hydralazine_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    hydralazine_and_hydrochlorothiazide.study_id = study1.id 
    hydralazine_and_hydrochlorothiazide.save!


    lisinopril_and_hydrochlorothiazide = Drug.new
    lisinopril_and_hydrochlorothiazide.medication_name = "lisinopril and hydrochlorothiazide" 
    lisinopril_and_hydrochlorothiazide.brand_name = "prinzide, zestoretic"
    lisinopril_and_hydrochlorothiazide.category = "restricted"
    lisinopril_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    lisinopril_and_hydrochlorothiazide.study_id = study1.id 
    lisinopril_and_hydrochlorothiazide.save!


    losartan_and_hydrochlorothiazide = Drug.new
    losartan_and_hydrochlorothiazide.medication_name = "losartan and hydrochlorothiazide" 
    losartan_and_hydrochlorothiazide.brand_name = "hyzaar"
    losartan_and_hydrochlorothiazide.category = "restricted"
    losartan_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    losartan_and_hydrochlorothiazide.study_id = study1.id 
    losartan_and_hydrochlorothiazide.save!


    methyldopa_and_hydrochlorothiazide = Drug.new
    methyldopa_and_hydrochlorothiazide.medication_name = "methyldopa and hydrochlorothiazide" 
    methyldopa_and_hydrochlorothiazide.brand_name = "aldoril"
    methyldopa_and_hydrochlorothiazide.category = "restricted"
    methyldopa_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    methyldopa_and_hydrochlorothiazide.study_id = study1.id 
    methyldopa_and_hydrochlorothiazide.save!


    metoprolol_and_hydrochlorothiazide = Drug.new
    metoprolol_and_hydrochlorothiazide.medication_name = "metoprolol and hydrochlorothiazide" 
    metoprolol_and_hydrochlorothiazide.brand_name = "lopressor hct"
    metoprolol_and_hydrochlorothiazide.category = "restricted"
    metoprolol_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    metoprolol_and_hydrochlorothiazide.study_id = study1.id 
    metoprolol_and_hydrochlorothiazide.save!


    nadolol_and_bendroflumethiazide = Drug.new
    nadolol_and_bendroflumethiazide.medication_name = "nadolol and bendroflumethiazide" 
    nadolol_and_bendroflumethiazide.brand_name = "corzide"
    nadolol_and_bendroflumethiazide.category = "restricted"
    nadolol_and_bendroflumethiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    nadolol_and_bendroflumethiazide.study_id = study1.id 
    nadolol_and_bendroflumethiazide.save!


    propranolol_and_hydrochlorothiazide = Drug.new
    propranolol_and_hydrochlorothiazide.medication_name = "propranolol and hydrochlorothiazide" 
    propranolol_and_hydrochlorothiazide.brand_name = "inderide"
    propranolol_and_hydrochlorothiazide.category = "restricted"
    propranolol_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    propranolol_and_hydrochlorothiazide.study_id = study1.id 
    propranolol_and_hydrochlorothiazide.save!


    spironolactone_and_hydrochlorothiazide = Drug.new
    spironolactone_and_hydrochlorothiazide.medication_name = "spironolactone and hydrochlorothiazide" 
    spironolactone_and_hydrochlorothiazide.brand_name = "aldactazide"
    spironolactone_and_hydrochlorothiazide.category = "restricted"
    spironolactone_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    spironolactone_and_hydrochlorothiazide.study_id = study1.id 
    spironolactone_and_hydrochlorothiazide.save!


    triamterene_and_hydrochlorothiazide = Drug.new
    triamterene_and_hydrochlorothiazide.medication_name = "triamterene and hydrochlorothiazide" 
    triamterene_and_hydrochlorothiazide.brand_name = "dyazide, maxide"
    triamterene_and_hydrochlorothiazide.category = "restricted"
    triamterene_and_hydrochlorothiazide.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    triamterene_and_hydrochlorothiazide.study_id = study1.id 
    triamterene_and_hydrochlorothiazide.save!


    verapamil_and_trandolapril = Drug.new
    verapamil_and_trandolapril.medication_name = "verapamil (extended release) and trandolapril" 
    verapamil_and_trandolapril.brand_name = "tarka"
    verapamil_and_trandolapril.category = "restricted"
    verapamil_and_trandolapril.information = "Prior to randomization, allowed provided that the dose has been stable for 30 days prior to randomization, during, Subject will remain on the same dose throughout the duration of the trial."
    verapamil_and_trandolapril.study_id = study1.id 
    verapamil_and_trandolapril.save!


    omega3_fatty_acids = Drug.new
    omega3_fatty_acids.medication_name = "omega-3 fatty acids" 
    omega3_fatty_acids.brand_name = ""
    omega3_fatty_acids.category = "prohibited"
    omega3_fatty_acids.information = "Prior to randomization 7 day washout, During double blind treatment priod prohibited."
    omega3_fatty_acids.study_id = study1.id 
    omega3_fatty_acids.save!


    kava_extracts = Drug.new
    kava_extracts.medication_name = "kava extracts" 
    kava_extracts.brand_name = ""
    kava_extracts.category = "prohibited"
    kava_extracts.information = "Prior to randomization 7 day washout, During double blind treatment priod prohibited."
    kava_extracts.study_id = study1.id 
    kava_extracts.save!


    gaba_supplements = Drug.new
    gaba_supplements.medication_name = "gaba supplements" 
    gaba_supplements.brand_name = ""
    gaba_supplements.category = "prohibited"
    gaba_supplements.information = "Prior to randomization 7 day washout, During double blind treatment priod prohibited."
    gaba_supplements.study_id = study1.id 
    gaba_supplements.save!


    ginko_baloba = Drug.new
    ginko_baloba.medication_name = "ginko baloba" 
    ginko_baloba.brand_name = ""
    ginko_baloba.category = "prohibited"
    ginko_baloba.information = "Prior to randomization 7 day washout, During double blind treatment priod prohibited."
    ginko_baloba.study_id = study1.id 
    ginko_baloba.save!
    
   end
end