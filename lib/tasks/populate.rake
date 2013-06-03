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
    study1.name = "Schire"
    study1.description = "Description for Schire"
    study1.save!
    
    #Step 2: Add drugs
    
    amantadine = Drug.new
    amantadine.medication_name = "Amantadine"
    amantadine.brand_name = "test brand name"
    amantadine.category = "prohibited"
    amantadine.information = "Period before screening: 3 months"
    amantadine.study_id = study1.id
    amantadine.save!
    
    amidodarone = Drug.new
    amidodarone.medication_name = "Amidodarone"
    amidodaron.brand_name = "test brand name"
    amidodarone.category = "prohibited"
    amidodarone.information = "Period before screening: 4 weeks"
    amidodarone.study_id = study1.id
    amidodarone.save!
    
    amitriptyline = Drug.new
    amitriptyline.medication_name = "Amitriptyline"
    amitriptyline.brand_name = "test brand name"
    amitriptyline.category = "prohibited"
    amitriptyline.information = "Period before screening: 4 weeks"
    amitriptyline.study_id = study1.id
    amitriptyline.save!
    
    amoxapine = Drug.new
    amoxapine.medication_name = "Amoxapine"
    amoxapine.category = "prohibited"
    amoxapine.information = "Period before screening: 4 weeks"
    amoxapine.study_id = study1.id
    amoxapine.save!
    
    amphetamine = Drug.new
    amphetamine.medication_name = "Amphetamine"
    amphetamine.category = "prohibited"
    amphetamine.information = "Period before screening: 4 weeks"
    amphetamine.study_id = study1.id
    amphetamine.save!
    
    antiamyloid_vaccine = Drug.new
    antiamyloid_vaccine.medication_name = "Anti-amyloid vaccine"
    antiamyloid_vaccine.category = "prohibited"
    antiamyloid_vaccine.information = "Period before screening: ever"
    antiamyloid_vaccine.study_id = study1.id
    antiamyloid_vaccine.save!
    
    atomoxetine = Drug.new
    atomoxetine.medication_name = "Atomoxetine"
    atomoxetine.category = "prohibited"
    atomoxetine.information = "Period before screening: 4 weeks"
    atomoxetine.study_id = study1.id
    atomoxetine.save!
  	
  	bapineuzumab = Drug.new
    bapineuzumab.medication_name = "Bapineuzumab"
    bapineuzumab.category = "prohibited"
    bapineuzumab.information = "Period before screening: 1 year"
    bapineuzumab.study_id = study1.id
    bapineuzumab.save!
    
    benzotropine = Drug.new
    benzotropine.medication_name = "Benzotropine"
    benzotropine.category = "prohibited"
    benzotropine.information = ">2 doses/week | Period before screening: 4 weeks"
    benzotropine.study_id = study1.id
    benzotropine.save!
    
    bromocriptine = Drug.new
    bromocriptine.medication_name = "Bromocriptine"
    bromocriptine.category = "prohibited"
    bromocriptine.information = "Period before screening: 3 months"
    bromocriptine.study_id = study1.id
    bromocriptine.save!
    
    carbamazepine = Drug.new
    carbamazepine.medication_name = "Carbamazepine"
    carbamazepine.category = "prohibited"
    carbamazepine.information = "Period before screening: 4 weeks"
    carbamazepine.study_id = study1.id
    carbamazepine.save!
    
    chlorodiazepoxide = Drug.new
    chlorodiazepoxide.medication_name = "Chlorodiazepoxide"
    chlorodiazepoxide.category = "prohibited"
    chlorodiazepoxide.information = ">2 doses/week | Period before screening: 4 weeks"
    chlorodiazepoxide.study_id = study1.id
    chlorodiazepoxide.save!

    chloroquine = Drug.new
    chloroquine.medication_name = "Chloroquine"
    chloroquine.category = "prohibited"
    chloroquine.information = "Period before screening: 4 weeks"
    chloroquine.study_id = study1.id
    chloroquine.save!
    
    chlorpromazine = Drug.new
    chlorpromazine.medication_name = "Chlorpromazine"
    chlorpromazine.category = "prohibited"
    chlorpromazine.information = "Period before screening: 4 weeks"
    chlorpromazine.study_id = study1.id
    chlorpromazine.save!
    
    clarithromycin = Drug.new
    clarithromycin.medication_name = "Clarithromycin"
    clarithromycin.category = "prohibited"
    clarithromycin.information = "Period before screening: 4 weeks"
    clarithromycin.study_id = study1.id
    clarithromycin.save!
    
    clomipramine = Drug.new
    clomipramine.medication_name = "Clomipramine"
    clomipramine.category = "prohibited"
    clomipramine.information = "Period before screening: 4 weeks"
    clomipramine.study_id = study1.id
    clomipramine.save!

    clonazepam = Drug.new
    clonazepam.medication_name = "Clonazepam"
    clonazepam.category = "prohibited"
    clonazepam.information = ">2 doses/week | Period before screening: 4 weeks"
    clonazepam.study_id = study1.id
    clonazepam.save!
    
    clozapine = Drug.new
    clozapine.medication_name = "Clozapine"
    clozapine.category = "prohibited"
    clozapine.information = "Period before screening: 4 weeks"
    clozapine.study_id = study1.id
    clozapine.save!
    
    codeine = Drug.new
    codeine.medication_name = "Codeine"
    codeine.category = "prohibited"
    codeine.information = ">2 doses/week | Period before screening: 4 weeks"
    codeine.study_id = study1.id
    codeine.save!
    
    corticosteroids = Drug.new
    corticosteroids.medication_name = "Corticosteroids: oral, intravenous, or intramuscular use"
    corticosteroids.category = "prohibited"
    corticosteroids.information = "Period before screening: 4 weeks"
    corticosteroids.study_id = study1.id
    corticosteroids.save!
    
    cyproheptadine = Drug.new
    cyproheptadine.medication_name = "Cyproheptadine"
    cyproheptadine.category = "prohibited"
    cyproheptadine.information = ">2 doses/week | Period before screening: 4 weeks"
    cyproheptadine.study_id = study1.id
    cyproheptadine.save!
    
    desipramine = Drug.new
    desipramine.medication_name = "Desipramine"
    desipramine.category = "prohibited"
    desipramine.information = "Period before screening: 4 weeks"
    desipramine.study_id = study1.id
    desipramine.save!   
   
    diazepam = Drug.new
    diazepam.medication_name = "Diazepam"
    diazepam.category = "prohibited"
    diazepam.information = ">2 doses/week | Period before screening: 4 weeks"
    diazepam.study_id = study1.id
    diazepam.save!   
   
    dicyclomine = Drug.new
    dicyclomine.medication_name = "Dicyclomine"
    dicyclomine.category = "prohibited"
    dicyclomine.information = ">2 doses/week | Period before screening: 4 weeks"
    dicyclomine.study_id = study1.id
    dicyclomine.save!   
    
    diphenhydramine = Drug.new
    diphenhydramine.medication_name = "Diphenhydramine"
    diphenhydramine.category = "prohibited"
    diphenhydramine.information = ">2 doses/week | Period before screening: 4 weeks"
    diphenhydramine.study_id = study1.id
    diphenhydramine.save!
     
    diphenoxylate = Drug.new
    diphenoxylate.medication_name = "Diphenoxylate with atropine"
    diphenoxylate.category = "prohibited"
    diphenoxylate.information = ">2 doses/week | Period before screening: 4 weeks"
    diphenoxylate.study_id = study1.id
    diphenoxylate.save!
    
    domperidone = Drug.new
    domperidone.medication_name = "Domperidone"
    domperidone.category = "prohibited"
    domperidone.information = "Period before screening: 4 weeks"
    domperidone.study_id = study1.id
    domperidone.save!
    
    ethambutol = Drug.new
    ethambutol.medication_name = "Ethambutol"
    ethambutol.category = "prohibited"
    ethambutol.information = "Period before screening: 4 weeks"
    ethambutol.study_id = study1.id
    ethambutol.save!
    
    flecainide = Drug.new
    flecainide.medication_name = "Flecainide"
    flecainide.category = "prohibited"
    flecainide.information = "Period before screening: 4 weeks"
    flecainide.study_id = study1.id
    flecainide.save!
     
    fluphenazine = Drug.new
    fluphenazine.medication_name = "Fluphenazine"
    fluphenazine.category = "prohibited"
    fluphenazine.information = "Period before screening: 4 weeks"
    fluphenazine.study_id = study1.id
    fluphenazine.save!
    
    flurazepam = Drug.new
    flurazepam.medication_name = "Flurazepam"
    flurazepam.category = "prohibited"
    flurazepam.information = ">2 doses/week | Period before screening: 4 weeks"
    flurazepam.study_id = study1.id
    flurazepam.save!   
    
    general_anesthetics = Drug.new
    general_anesthetics.medication_name = "General anesthetics"
    general_anesthetics.category = "prohibited"
    general_anesthetics.information = "Period before screening: 3 months"
    general_anesthetics.study_id = study1.id
    general_anesthetics.save!
    
    hydromorphone = Drug.new
    hydromorphone.medication_name = "Hydromorphone"
    hydromorphone.category = "prohibited"
    hydromorphone.information = ">2 doses/week | Period before screening: 4 weeks"
    hydromorphone.study_id = study1.id
    hydromorphone.save!
    
    hydroxychloroquine = Drug.new
    hydroxychloroquine.medication_name = "Hydroxychloroquine"
    hydroxychloroquine.category = "prohibited"
    hydroxychloroquine.information = "Period before screening: 4 weeks"
    hydroxychloroquine.study_id = study1.id
    hydroxychloroquine.save!
    
    hydroxyzine = Drug.new
    hydroxyzine.medication_name = "Hydroxyzine"
    hydroxyzine.category = "prohibited"
    hydroxyzine.information = ">2 doses/week | Period before screening: 4 weeks"
    hydroxyzine.study_id = study1.id
    hydroxyzine.save!
    
    hyoscyamine = Drug.new
    hyoscyamine.medication_name = "Hyoscyamine"
    hyoscyamine.category = "prohibited"
    hyoscyamine.information = ">2 doses/week | Period before screening: 4 weeks"
    hyoscyamine.study_id = study1.id
    hyoscyamine.save!
    
    i_deprenyl_selegiline = Drug.new
    i_deprenyl_selegiline.medication_name = "I-deprenyl Selegiline"
    i_deprenyl_selegiline.category = "prohibited"
    i_deprenyl_selegiline.information = "Period before screening: 3 months"
    i_deprenyl_selegiline.study_id = study1.id
    i_deprenyl_selegiline.save!
    
    imipramine = Drug.new
    imipramine.medication_name = "Imipramine"
    imipramine.category = "prohibited"
    imipramine.information = "Period before screening: 4 weeks"
    imipramine.study_id = study1.id
    imipramine.save!
    
    indinavir = Drug.new
    indinavir.medication_name = "Indinavir"
    indinavir.category = "prohibited"
    indinavir.information = "Period before screening: 4 weeks"
    indinavir.study_id = study1.id
    indinavir.save!
    
    isocarboxazide = Drug.new
    isocarboxazide.medication_name = "Isocarboxazide"
    isocarboxazide.category = "prohibited"
    isocarboxazide.information = "Period before screening: 4 weeks"
    isocarboxazide.study_id = study1.id
    isocarboxazide.save!
    
    itraconazole = Drug.new
    itraconazole.medication_name = "Itraconazole"
    itraconazole.category = "prohibited"
    itraconazole.information = "Period before screening: 4 weeks"
    itraconazole.study_id = study1.id
    itraconazole.save!
    
    ketoconazole = Drug.new
    ketoconazole.medication_name = "Ketoconazole"
    ketoconazole.category = "prohibited"
    ketoconazole.information = "Period before screening: 4 weeks"
    ketoconazole.study_id = study1.id
    ketoconazole.save!
    
    l_dopa = Drug.new
    l_dopa.medication_name = "L-dopa"
    l_dopa.category = "prohibited"
    l_dopa.information = "Period before screening: 3 months"
    l_dopa.study_id = study1.id
    l_dopa.save!
    
    levetiracetam = Drug.new
    levetiracetam.medication_name = "Levetiracetam"
    levetiracetam.category = "prohibited"
    levetiracetam.information = "Period before screening: 4 weeks"
    levetiracetam.study_id = study1.id
    levetiracetam.save!
    
    lithium = Drug.new
    lithium.medication_name = "Lithium"
    lithium.category = "prohibited"
    lithium.information = "Period before screening: 4 weeks"
    lithium.study_id = study1.id
    lithium.save!
    
    loxapine = Drug.new
    loxapine.medication_name = "Loxapine"
    loxapine.category = "prohibited"
    loxapine.information = "Period before screening: 4 weeks"
    loxapine.study_id = study1.id
    loxapine.save!
    
    maprotiline = Drug.new
    maprotiline.medication_name = "Maprotiline"
    maprotiline.category = "prohibited"
    maprotiline.information = "Period before screening: 4 weeks"
    maprotiline.study_id = study1.id
    maprotiline.save!
    
    meprobamate = Drug.new
    meprobamate.medication_name = "Meprobamate"
    meprobamate.category = "prohibited"
    meprobamate.information = ">2 doses/week | Period before screening: 4 weeks"
    meprobamate.study_id = study1.id
    meprobamate.save!
    
    methylphenidate = Drug.new
    methylphenidate.medication_name = "Methylphenidate"
    methylphenidate.category = "prohibited"
    methylphenidate.information = "Period before screening: 4 weeks"
    methylphenidate.study_id = study1.id
    methylphenidate.save!
    
    modafinil = Drug.new
    modafinil.medication_name = "Modafinil"
    modafinil.category = "prohibited"
    modafinil.information = "Period before screening: 4 weeks"
    modafinil.study_id = study1.id
    modafinil.save!
    
    morphine = Drug.new
    morphine.medication_name = "Morphine"
    morphine.category = "prohibited"
    morphine.information = ">2 doses/week | Period before screening: 4 weeks"
    morphine.study_id = study1.id
    morphine.save!
    
    moxifloxacin = Drug.new
    moxifloxacin.medication_name = "Moxifloxacin"
    moxifloxacin.category = "prohibited"
    moxifloxacin.information = "Period before screening: 4 weeks"
    moxifloxacin.study_id = study1.id
    moxifloxacin.save!
    
    nefazodone = Drug.new
    nefazodone.medication_name = "Nefazodone"
    nefazodone.category = "prohibited"
    nefazodone.information = "Period before screening: 4 weeks"
    nefazodone.study_id = study1.id
    nefazodone.save!
    
    nelfinavir = Drug.new
    nelfinavir.medication_name = "Nelfinavir"
    nelfinavir.category = "prohibited"
    nelfinavir.information = "Period before screening: 4 weeks"
    nelfinavir.study_id = study1.id
    nelfinavir.save!
    
    notriptyline = Drug.new
    notriptyline.medication_name = "Notriptyline"
    notriptyline.category = "prohibited"
    notriptyline.information = "Period before screening: 4 weeks"
    notriptyline.study_id = study1.id
    notriptyline.save!
    
    oxycodone = Drug.new
    oxycodone.medication_name = "Oxycodone"
    oxycodone.category = "prohibited"
    oxycodone.information = ">2 doses/week | Period before screening: 4 weeks"
    oxycodone.study_id = study1.id
    oxycodone.save!
    
    pergolide = Drug.new
    pergolide.medication_name = "Pergolide"
    pergolide.category = "prohibited"
    pergolide.information = "Period before screening: 3 months"
    pergolide.study_id = study1.id
    pergolide.save!
    
    perphenazine = Drug.new
    perphenazine.medication_name = "Perphenazine"
    perphenazine.category = "prohibited"
    perphenazine.information = "Period before screening: 4 weeks"
    perphenazine.study_id = study1.id
    perphenazine.save!
    
    phenelzine = Drug.new
    phenelzine.medication_name = "Phenelzine"
    phenelzine.category = "prohibited"
    phenelzine.information = "Period before screening: 4 weeks"
    phenelzine.study_id = study1.id
    phenelzine.save!
    
    phenytoin = Drug.new
    phenytoin.medication_name = "Phenytoin"
    phenytoin.category = "prohibited"
    phenytoin.information = "Period before screening: 4 weeks"
    phenytoin.study_id = study1.id
    phenytoin.save!
    
    pimozide = Drug.new
    pimozide.medication_name = "Pimozide"
    pimozide.category = "prohibited"
    pimozide.information = "Period before screening: 4 weeks"
    pimozide.study_id = study1.id
    pimozide.save!
    
    procainamide = Drug.new
    procainamide.medication_name = "Procainamide"
    procainamide.category = "prohibited"
    procainamide.information = "Period before screening: 4 weeks"
    procainamide.study_id = study1.id
    procainamide.save!
    
    prochlorperazine = Drug.new
    prochlorperazine.medication_name = "Prochlorperazine"
    prochlorperazine.category = "prohibited"
    prochlorperazine.information = ">2 doses/week | Period before screening: 4 weeks"
    prochlorperazine.study_id = study1.id
    prochlorperazine.save!
    
    promethazine = Drug.new
    promethazine.medication_name = "Promethazine"
    promethazine.category = "prohibited"
    promethazine.information = ">2 doses/week | Period before screening: 4 weeks"
    promethazine.study_id = study1.id
    promethazine.save!
    
    propoxyphene = Drug.new
    propoxyphene.medication_name = "Propoxyphene (Darvon) & its variations"
    propoxyphene.category = "prohibited"
    propoxyphene.information = ">2 doses/week | Period before screening: 4 weeks"
    propoxyphene.study_id = study1.id
    propoxyphene.save!
    
    protriptyline = Drug.new
    protriptyline.medication_name = "Protriptyline"
    protriptyline.category = "prohibited"
    protriptyline.information = "Period before screening: 4 weeks"
    protriptyline.study_id = study1.id
    protriptyline.save!
    
    rasagiline = Drug.new
    rasagiline.medication_name = "Rasagiline"
    rasagiline.category = "prohibited"
    rasagiline.information = "Period before screening: 3 months"
    rasagiline.study_id = study1.id
    rasagiline.save!
    
    ritonavir = Drug.new
    ritonavir.medication_name = "Ritonavir"
    ritonavir.category = "prohibited"
    ritonavir.information = "Period before screening: 4 weeks"
    ritonavir.study_id = study1.id
    ritonavir.save!
    
    selegiline = Drug.new
    selegiline.medication_name = "Selegiline"
    selegiline.category = "prohibited"
    selegiline.information = "Period before screening: 3 months"
    selegiline.study_id = study1.id
    selegiline.save!
    
    tamoxifen = Drug.new
    tamoxifen.medication_name = "Tamoxifen"
    tamoxifen.category = "prohibited"
    tamoxifen.information = "Period before screening: 4 weeks"
    tamoxifen.study_id = study1.id
    tamoxifen.save!
    
    tarenflurbil = Drug.new
    tarenflurbil.medication_name = "Tarenflurbil"
    tarenflurbil.category = "prohibited"
    tarenflurbil.information = "Period before screening: 3 months"
    tarenflurbil.study_id = study1.id
    tarenflurbil.save!
    
    thioridazine = Drug.new
    thioridazine.medication_name = "Thioridazine"
    thioridazine.category = "prohibited"
    thioridazine.information = "Period before screening: 4 weeks"
    thioridazine.study_id = study1.id
    thioridazine.save!
    
    thiothixene = Drug.new
    thiothixene.medication_name = "Thiothixene"
    thiothixene.category = "prohibited"
    thiothixene.information = "Period before screening: 4 weeks"
    thiothixene.study_id = study1.id
    thiothixene.save!
    
    tramiprosate = Drug.new
    tramiprosate.medication_name = "Tramiprosate"
    tramiprosate.category = "prohibited"
    tramiprosate.information = "Period before screening: 3 months"
    tramiprosate.study_id = study1.id
    tramiprosate.save!
    
    tranylcypromine = Drug.new
    tranylcypromine.medication_name = "Tranylcypromine"
    tranylcypromine.category = "prohibited"
    tranylcypromine.information = "Period before screening: 4 weeks"
    tranylcypromine.study_id = study1.id
    tranylcypromine.save!
    
    triazolam = Drug.new
    triazolam.medication_name = "Triazolam"
    triazolam.category = "prohibited"
    triazolam.information = ">2 doses/week | Period before screening: 4 weeks"
    triazolam.study_id = study1.id
    triazolam.save!
    
    trifluoperazine = Drug.new
    trifluoperazine.medication_name = "Trifluoperazine"
    trifluoperazine.category = "prohibited"
    trifluoperazine.information = "Period before screening: 4 weeks"
    trifluoperazine.study_id = study1.id
    trifluoperazine.save!
    
    trihexyphenidyl = Drug.new
    trihexyphenidyl.medication_name = "Trihexyphenidyl"
    trihexyphenidyl.category = "prohibited"
    trihexyphenidyl.information = ">2 doses/week | Period before screening: 4 weeks"
    trihexyphenidyl.study_id = study1.id
    trihexyphenidyl.save!
    
    trimethobenzamide = Drug.new
    trimethobenzamide.medication_name = "Trimethobenzamide"
    trimethobenzamide.category = "prohibited"
    trimethobenzamide.information = ">2 doses/week | Period before screening: 4 weeks"
    trimethobenzamide.study_id = study1.id
    trimethobenzamide.save!
    
    trimipramine = Drug.new
    trimipramine.medication_name = "Trimipramine"
    trimipramine.category = "prohibited"
    trimipramine.information = "Period before screening: 4 weeks"
    trimipramine.study_id = study1.id
    trimipramine.save!
    
    valproic_acid = Drug.new
    valproic_acid.medication_name = "Valproic acid"
    valproic_acid.category = "prohibited"
    valproic_acid.information = "Period before screening: 4 weeks"
    valproic_acid.study_id = study1.id
    valproic_acid.save!
    
   end
end