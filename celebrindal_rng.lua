function get_sets()
                AccIndex = 1
                AccArray = {"LowACC","MidACC","HighACC","Fodder"}
                IdleIndex = 1
                IdleArray = {'Movement', 'Regen'}				-- Default Idle Set Is Movement --
                PreshotIndex = 1
				PreshotArray = {'Any','RDM'}
				Armor = 'None'
                autoRAmode = 0
                target_distance = 5 -- Set Default Distance Here --
                send_command('input /macro book 3;wait .1;input /macro set 1') -- Change Default Macro Book Here --
				send_command('bind ^` gs c flur') --flurry toggle--
				send_command('bind ^- gs c acc') --accuracy toggle--
				send_command('bind ^= gs c pdt') --PDT toggle--
				send_command('bind ^\ gs c auto') --Gearset update toggle--
                ranged_ws = S{
                                "Hot Shot","Split Shot","Sniper Shot","Slug Shot","Blast Shot","Heavy Shot","Detonator",
                                "Numbing Shot","Last Stand","Coronach","Trueflight","Wildfire","Flaming Arrow",
                                "Piercing Arrow","Dulling Arrow","Sidewinder","Blast Arrow","Arching Arrow",
                                "Empyreal Arrow","Refulgent Arrow","Apex Arrow","Jishnu's Radiance"}
								
         
                -- Idle/Town Sets --
                sets.Idle = {}
                sets.Idle.Regen = {
                                head="Orion Beret +3",neck="Bathy Choker +1",
                                body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Patricius Ring",ring2="Defending Ring",ear1="Enervating earring",ear2="Telos earring",
                                back="Moonbeam Cape",waist="Flume Belt +1",legs="Adhemar Kecks +1",feet="Orion Socks +3"}
                sets.Idle.Movement = sets.Idle.Regen
				sets.Idle.Town = {
								main={ name="Malevolence", augments={'INT+9','Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+4',}},
								sub="Nusku Shield",
								range="Fomalhaut",
								ammo="Chrono Bullet",
								head="Orion Beret +3",
								body="Orion Jerkin +3",
								hands="Orion Bracers +3",
								legs="Adhemar Kecks +1",
								feet="Orion Socks +3",
								neck="Anu Torque",
								waist="Kwahu Kachina Belt",
								left_ear="Dedition Earring",
								right_ear="Telos Earring",
								left_ring="Dingir Ring",
								right_ring="Cacoethic Ring +1",
								back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}}}
         
                sets.Gastraphetes = {main={ name="Malevolence", augments={'INT+9','Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+4',}},sub={ name="Malevolence", augments={'INT+3','Mag. Acc.+5','"Mag.Atk.Bns."+7',}},range="Gastraphetes",ammo="Quelling Bolt"}
				
				sets.Fomalhaut = {main="Perun +1",sub="Nusku Shield",range="Fomalhaut",ammo="Chrono Bullet"}
				
				sets.FailNot = {main="Kustawi +1",sub="Nusku Shield",range="Fail-Not",ammo="Chrono Arrow"}
				
				sets.Annihilator = {main="Perun +1",sub="Nusku Shield",range="Annihilator",ammo="Chrono Bullet"}
				
				sets.Gandiva = {main="Oneiros Knife",sub="Nusku Shield",range="Gandiva",ammo="Chrono Arrow"}
				
				sets.Closeup = {main="Kustawi +1",sub="Ternion Dagger +1"}
				
				-- Preshot --
				sets.Preshot = {}
				
				sets.Preshot.FailNot = {
								head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                                body={ name="Taeon Tabard", augments={'"Snapshot"+5','"Snapshot"+5',}},hands="Carmine Fin. Ga. +1",back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.FailNot.Any = set_combine(sets.Preshot.FailNot,{body="Amini Caban +1",waist="Yemaya Belt"})
								
				sets.Preshot.FailNot.RDM = set_combine(sets.Preshot.FailNot.Any,{head="Orion Beret +3",waist="Impulse Belt",feet="Pursuer's Gaiters"})
				
				sets.Preshot.Fomalhaut = {
								head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                                body={ name="Taeon Tabard", augments={'"Snapshot"+5','"Snapshot"+5',}},hands="Carmine Fin. Ga. +1",back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.Fomalhaut.Any = set_combine(sets.Preshot.Fomalhaut,{body="Amini Caban +1",waist="Yemaya Belt"})
								
				sets.Preshot.Fomalhaut.RDM = set_combine(sets.Preshot.Fomalhaut.Any,{head="Orion Beret +3",waist="Impulse Belt",feet="Pursuer's Gaiters"})
				
				sets.Preshot.Gastraphetes = {
								head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                                body="Amini Caban +1",hands="Carmine Fin. Ga. +1",back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
								
				sets.Preshot.Gastraphetes.Any = set_combine(sets.Preshot.Gastraphetes,{head="Orion Beret +3"})
				
				sets.Preshot.Gastraphetes.RDM = set_combine(sets.Preshot.Gastraphetes.Any,{feet="Pursuer's Gaiters"})
				
				sets.Preshot.Annihilator = {
								head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                                body={ name="Taeon Tabard", augments={'"Snapshot"+5','"Snapshot"+5',}},hands="Carmine Fin. Ga. +1",back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.Annihilator.Any = set_combine(sets.Preshot.Annihilator,{body="Amini Caban +1",waist="Yemaya Belt"})
				
				sets.Preshot.Annihilator.RDM = set_combine(sets.Preshot.Annihilator.Any,{head="Orion Beret +3",waist="Impulse Belt",feet="Pursuer's Gaiters"})
				
				sets.Preshot.Gandiva = {
								head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                                body={ name="Taeon Tabard", augments={'"Snapshot"+5','"Snapshot"+5',}},hands="Carmine Fin. Ga. +1",back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},waist="Impulse Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.Gandiva.Any = set_combine(sets.Preshot.Gandiva,{body="Amini Caban +1",waist="Yemaya Belt"})
				
				sets.Preshot.Gandiva.RDM = set_combine(sets.Preshot.Gandiva.Any,{head="Orion Beret +3",waist="Impulse Belt",feet="Pursuer's Gaiters"})
				
                -- Shooting Base Set --
				sets.Midshot = {range="",ammo="",
                                head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",
                                body="Orion Jerkin +3",hands="Amini Glove. +1",ring1="Ilabrat Ring",ring2="Dingir Ring",
                                back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
				
				sets.Midshot.MidACC = set_combine(sets.Midshot,{
								ear1="Enervating Earring"})
				
				sets.Midshot.HighACC = set_combine(sets.Midshot.MidACC,{
				                head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				sets.Midshot.Fodder = set_combine(sets.Midshot,{body="Arc. Jerkin +1",ear1="Dedition Earring"})
         
                -- Fail-Not Sets --
                sets.Midshot.FailNot = {
                                range="Fail-Not",ammo="Chrono Arrow",
                                head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",
                                body="Orion Jerkin +3",hands="Amini Glove. +1",ring1="Ilabrat Ring",ring2="Dingir Ring",
                                back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
               
                sets.Midshot.FailNot.MidACC = set_combine(sets.Midshot.FailNot,{
								ear1="Enervating Earring"})
               
                sets.Midshot.FailNot.HighACC = set_combine(sets.Midshot.FailNot.MidACC,{
                                head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				sets.Midshot.FailNot.Fodder = set_combine(sets.Midshot.FailNot,{body="Arc. Jerkin +1",ear1="Dedition Earring"})
				
				-- Fomalhaut Sets --
                sets.Midshot.Fomalhaut = {
                                range="Fomalhaut",ammo="Chrono Bullet",head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Adhemar wristbands",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
               
                sets.Midshot.Fomalhaut.MidACC = set_combine(sets.Midshot.Fomalhaut,{
								ear1="Enervating Earring"})
               
                sets.Midshot.Fomalhaut.HighACC = set_combine(sets.Midshot.Fomalhaut.MidACC,{
                                head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				sets.Midshot.Fomalhaut.Fodder = set_combine(sets.Midshot.Fomalhaut,{body="Arc. Jerkin +1",ear1="Dedition Earring"})

				-- Gastraphetes Sets --
				sets.Midshot.Gastraphetes = {
                                range="Gastraphetes",head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Adhemar wristbands",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
               
                sets.Midshot.Gastraphetes.MidACC = set_combine(sets.Midshot.Gastraphetes,{
								ear1="Enervating Earring"})
               
                sets.Midshot.Gastraphetes.HighACC = set_combine(sets.Midshot.Gastraphetes.MidACC,{
                                head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				sets.Midshot.Gastraphetes.Fodder = set_combine(sets.Midshot.Gastraphetes,{body="Arc. Jerkin +1",ear1="Dedition Earring"})
				
				-- Annihilator Sets --
				sets.Midshot.Annihilator = {range="Annihilator",ammo="Chrono Bullet",head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Adhemar wristbands",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
				
				sets.Midshot.Annihilator.MidACC = set_combine(sets.Midshot.Annihilator,{ear1="Enervating Earring"})
				
				sets.Midshot.Annihilator.HighACC = set_combine(sets.Midshot.Annihilator.MidACC,{head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				
				sets.Midshot.Annihilator.Fodder = set_combine(sets.Midshot.Annihilator,{body="Arc. Jerkin +1"})
				
				-- Gandiva Sets --
				sets.Midshot.Gandiva = {range="Gandiva",head="Arcadian Beret +1",neck="Iskur Gorget",ear1="Dedition Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Adhemar wristbands",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhemar Gamashes"}
				
				sets.Midshot.Gandiva.MidACC = set_combine(sets.Midshot.Gandiva,{ear1="Enervating Earring"})
				
				sets.Midshot.Gandiva.HighACC = set_combine(sets.Midshot.Gandiva.MidACC,{head="Orion Beret +3",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
				
				sets.Midshot.Gandiva.Fodder = set_combine(sets.Midshot.Gandiva,{body="Arc. Jerkin +1"})
				
				
                -- Barrage Base Set --
                Barrage = {
                                body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"}
     
                -- Fail-Not Barrage Sets --
                sets.Midshot.FailNot.Barrage = set_combine(sets.Midshot.FailNot, {
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",ring1="Dingir Ring"})
                               
                sets.Midshot.FailNot.MidACC.Barrage = set_combine(sets.Midshot.FailNot.MidACC, {
								head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring2="Cacoethic Ring +1",ring1="Dingir Ring",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
                               
                sets.Midshot.FailNot.HighACC.Barrage = set_combine(sets.Midshot.FailNot.HighACC, {
								head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
				sets.Midshot.FailNot.Fodder.Barrage = sets.Midshot.FailNot.Barrage
               
                -- Fomalhaut Barrage Sets --
                sets.Midshot.Fomalhaut.Barrage = set_combine(sets.Midshot.Fomalhaut, {
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",ring1="Dingir Ring"})
                               
                sets.Midshot.Fomalhaut.MidACC.Barrage = set_combine(sets.Midshot.Fomalhaut.MidACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring2="Cacoethic Ring +1",ring1="Dingir Ring",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
								
                sets.Midshot.Fomalhaut.HighACC.Barrage = set_combine(sets.Midshot.Fomalhaut.HighACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
				sets.Midshot.Fomalhaut.Fodder.Barrage = sets.Midshot.Fomalhaut.Barrage
				
				-- Gastraphetes Barrage Sets --
				sets.Midshot.Gastraphetes.Barrage = set_combine(sets.Midshot.Gastraphetes, {
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",ring1="Dingir Ring"})
                               
                sets.Midshot.Gastraphetes.MidACC.Barrage = set_combine(sets.Midshot.Gastraphetes.MidACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring2="Cacoethic Ring +1",ring1="Dingir Ring",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
								
                sets.Midshot.Gastraphetes.HighACC.Barrage = set_combine(sets.Midshot.Gastraphetes.HighACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
				sets.Midshot.Gastraphetes.Fodder.Barrage = sets.Midshot.Gastraphetes.Barrage
               
			   -- Annihilator Barrage Sets --
			   sets.Midshot.Annihilator.Barrage = set_combine(sets.Midshot.Annihilator,{head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",ring1="Dingir Ring"})
			   
			   sets.Midshot.Annihilator.Barrage.MidACC = set_combine(sets.Midshot.Annihilator.MidACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring2="Cacoethic Ring +1",ring1="Dingir Ring",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
			   
			   sets.Midshot.Annihilator.Barrage.HighACC = set_combine(sets.Midshot.Annihilator.HighACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
			   
			   sets.Midshot.Annihilator.Barrage.Fodder = sets.Midshot.Annihilator.Barrage
			   --Gandiva Barrage Sets --
			   sets.Midshot.Gandiva.Barrage = set_combine(sets.Midshot.Gandiva, {
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",ring1="Dingir Ring"})
			   
			   sets.Midshot.Gandiva.Barrage.MidACC = set_combine(sets.Midshot.Gandiva.MidACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring2="Cacoethic Ring +1",ring1="Dingir Ring",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
			   
			   sets.Midshot.Gandiva.Barrage.HighACC = set_combine(sets.Midshot.Gandiva.HighACC,{
                                head="Orion Beret +3",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",
                                legs="Adhemar Kecks +1",feet="Orion Socks +3"})
			   
			   sets.Midshot.Gandiva.Barrage.Fodder = sets.Midshot.Gandiva.Barrage
			   
			   -- Doubleshot Sets --
			   sets.Doubleshot = {head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"}
			   
			   -- Fail-Not Doubleshot Sets --
			   sets.Midshot.FailNot.Doubleshot = set_combine(sets.Midshot.FailNot,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.FailNot.Doubleshot.MidACC = set_combine(sets.Midshot.FailNot.MidACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.FailNot.Doubleshot.HighACC = set_combine(sets.Midshot.FailNot.HighACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.FailNot.Doubleshot.Fodder = set_combine(sets.Midshot.FailNot,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   -- Fomalhaut Doubleshot Sets --
			   sets.Midshot.Fomalhaut.Doubleshot = set_combine(sets.Midshot.Fomalhaut,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Fomalhaut.Doubleshot.MidACC = set_combine(sets.Midshot.Fomalhaut.MidACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Fomalhaut.Doubleshot.HighACC = set_combine(sets.Midshot.Fomalhaut.HighACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Fomalhaut.Doubleshot.Fodder = sets.Midshot.Fomalhaut.Doubleshot
			   
			   --Gastraphetes Doubleshot Sets--
			   sets.Midshot.Gastraphetes.Doubleshot = set_combine(sets.Midshot.Gastraphetes,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gastraphetes.Doubleshot.MidACC = set_combine(sets.Midshot.Gastraphetes.MidACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gastraphetes.Doubleshot.HighACC = set_combine(sets.Midshot.Gastraphetes.HighACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gastraphetes.Doubleshot.Fodder = sets.Midshot.Gastraphetes.Doubleshot
			   
			   --Annihilator Doubleshot Sets--
			   sets.Midshot.Annihilator.Doubleshot = set_combine(sets.Midshot.Annihilator,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Annihilator.Doubleshot.MidACC = set_combine(sets.Midshot.Annihilator.MidACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Annihilator.Doubleshot.HighACC = set_combine(sets.Midshot.Annihilator.HighACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Annihilator.Doubleshot.Fodder = sets.Midshot.Annihilator.Doubleshot
			   
			   --Gandiva Doubleshot Sets--
			   sets.Midshot.Gandiva.Doubleshot = set_combine(sets.Midshot.Gandiva,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gandiva.Doubleshot.MidACC = set_combine(sets.Midshot.Gandiva.MidACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gandiva.Doubleshot.HighACC = set_combine(sets.Midshot.Gandiva.HighACC,{head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			   
			   sets.Midshot.Gandiva.Doubleshot.Fodder = sets.Midshot.Gandiva.Doubleshot
			   
			   --Gandiva Aftermath Set--
			   
			   sets.Midshot.Gandiva.AM = set_combine(sets.Midshot.Gandiva,{head="Meghanada Visor +2",ear1="Enervating Earring",body="Meghanada Cuirie +2",hands="Kobo Kote",ring1="Begrudging Ring",back={ name="Belenus's Cape", augments={'DEX+20','Rng.Acc.+20 Rng.Atk.+20','Crit.hit rate+10',}},waist="Kwahu Kachina Belt",legs="Darrainger's Brais",feet="Oshosi Leggings"})
			   
			   --Camouflage Sets--
			   sets.Midshot.Camouflage = {}
			   
			   sets.Midshot.FailNot.Camouflage = sets.Midshot.Gandiva.AM
			   
			   sets.Midshot.Fomalhaut.Camouflage = sets.Midshot.Gandiva.AM
			   
			   sets.Midshot.Annihilator.Camouflage = sets.Midshot.Gandiva.AM
			   
			   sets.Midshot.Gastraphetes.Camouflage = sets.Midshot.Gandiva.AM
			   
			   sets.Midshot.Gandiva.Camouflage = sets.Midshot.Gandiva.AM
				
				-- PDT/MDT Sets --
                sets.PDT = {
								head="Meghanada Visor +2",body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Patricius Ring",ring2="Defending Ring",back="Moonbeam Cape",legs="Carmine Cuisses +1",waist="Flume Belt +1",feet="Meg. Jam. +2",neck="Loricate Torque +1"}
         
                sets.MDT = {
								head="Amini Gapette +1",neck="Loricate Torque +1",body="Orion Jerkin +3",hands="Floral Gauntlets",ring1="Fortified Ring",ring2="Defending Ring",legs="Gyve trousers",waist="Flax Sash",back="Moonbeam Cape",ear1="Etiolation Earring",ear2="Static Earring"}
         
                -- Melee Sets --
                sets.Melee = {
                                head="Adhemar Bonnet",neck="Anu torque",ear1="Sherida Earring",ear2="Eabani Earring",body={ name="Herculean Vest", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','AGI+2','Accuracy+7',}},hands="Floral Gauntlets",ring1="Hetairoi Ring",ring2="Chirich Ring",back="Bleating Mantle",waist="Windbuffet Belt +1",legs="Carmine Cuisses +1",feet={ name="Herculean Boots", augments={'Crit.hit rate+3','DEX+9','Quadruple Attack +2','Accuracy+12 Attack+12','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}}
                               
                sets.Melee.MidACC = set_combine(sets.Melee,{neck="Combatant's Torque"})
                 
                sets.Melee.HighACC = set_combine(sets.Melee.MidACC,{feet="Meg. Jam. +2"})
				
				sets.Melee.Fodder = sets.Melee
         
                -- WS Base Set --
                sets.WS = {
				                head="Orion Beret +3",neck="Fotia Gorget",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                body={ name="Herculean Vest", augments={'Rng.Acc.+26','Weapon skill damage +3%','AGI+15',}},hands="Meg. Gloves +2",ring1="Dingir Ring",ring2="Ilabrat Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},waist="Fotia Belt",legs={ name="Herculean Trousers", augments={'Weapon skill damage +3%','AGI+10','Rng.Acc.+11','Rng.Atk.+12',}},feet={ name="Herculean Boots", augments={'Rng.Atk.+22','Weapon skill damage +3%','STR+5','Rng.Acc.+4',}}}
				
				sets.WS.MidACC = set_combine(sets.WS,{
								ring2="Cacoethic Ring +1"})
				
				sets.WS.HighACC = set_combine(sets.WS.MidACC, {
								body="Amini Caban +1"})
				
				sets.WS.Fodder = sets.WS
         
                -- WS Sets --
                -- Apex Arrow --
                sets.WS['Apex Arrow'] = set_combine(sets.WS,{
				                head="Orion Beret +3",neck="Fotia Gorget",body={ name="Herculean Vest", augments={'Rng.Acc.+26','Weapon skill damage +3%','AGI+15',}},hands="Kobo Kote",ring1="Dingir Ring",ring2="Ilabrat Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},waist="Fotia Belt",legs={ name="Herculean Trousers", augments={'Weapon skill damage +3%','AGI+10','Rng.Acc.+11','Rng.Atk.+12',}},feet={ name="Herculean Boots", augments={'Rng.Atk.+22','Weapon skill damage +3%','STR+5','Rng.Acc.+4',}}})
             
                sets.WS['Apex Arrow'].MidACC = set_combine(sets.WS["Apex Arrow"],{
								ring2="Cacoethic Ring +1"})
               
                sets.WS['Apex Arrow'].HighACC = set_combine(sets.WS["Apex Arrow"].MidACC,{
								body="Amini Caban +1"})
				
				sets.WS['Apex Arrow'].Fodder = sets.WS['Apex Arrow']
                -- Jishnu's Radiance --
                sets.WS["Jishnu's Radiance"] = set_combine(sets.WS, {
                                head="Adhemar Bonnet",neck="Fotia Gorget",ear1="Sherida Earring",ear2="Moonshade Earring",body="Meg. Cuirie +2",hands="Kobo Kote",ring1="Begrudging Ring",ring2="Ilabrat Ring",back={ name="Belenus's Cape", augments={'DEX+20','Rng.Acc.+20 Rng.Atk.+20','Crit.hit rate+10',}},waist="Fotia Belt",legs="Darrainger's Brais",feet="Thereoid greaves"})
               
                sets.WS["Jishnu's Radiance"].MidACC = set_combine(sets.WS["Jishnu's Radiance"],{
								feet="Mummu Gamash. +1",
								ear1="Telos Earring"})
                sets.WS["Jishnu's Radiance"].HighACC = set_combine(sets.WS["Jishnu's Radiance"].MidACC,{
                                })
				
				sets.WS["Jishnu's Radiance"].Fodder = sets.WS["Jishnu's Radiance"]
     
                -- Last Stand --
                sets.WS['Last Stand'] = set_combine(sets.WS, {
                                head="Orion Beret +3",neck="Fotia Gorget",body={ name="Herculean Vest", augments={'Rng.Acc.+26','Weapon skill damage +3%','AGI+15',}},hands="Meg. Gloves +2",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},waist="Fotia Belt",legs={ name="Herculean Trousers", augments={'Weapon skill damage +3%','AGI+10','Rng.Acc.+11','Rng.Atk.+12',}},feet={ name="Herculean Boots", augments={'Rng.Atk.+22','Weapon skill damage +3%','STR+5','Rng.Acc.+4',}}})
               
                sets.WS['Last Stand'].MidACC = set_combine(sets.WS["Last Stand"],{
								ring2="Cacoethic Ring +1"})
               
                sets.WS['Last Stand'].HighACC = set_combine(sets.WS["Last Stand"].MidACC,{
                                feet="Meg. Jam. +2"})
								
				sets.WS['Last Stand'].Fodder = sets.WS['Last Stand']
				
				-- Trueflight --
				sets.WS['Trueflight'] = set_combine(sets.WS,{head={ 
					name="Herculean Helm", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Weapon skill damage +4%','Mag. Acc.+3','"Mag.Atk.Bns."+5',}},
					body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
					hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
					legs={ name="Herculean Trousers", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','Weapon skill damage +4%','"Mag.Atk.Bns."+12',}},
					feet={ name="Herculean Boots", augments={'Mag. Acc.+8','Weapon skill damage +4%','STR+3','"Mag.Atk.Bns."+15',}},
					neck="Baetyl Pendant",
					waist="Svelt. Gouriz +1",
					left_ear="Friomisi Earring",
					right_ear={ name="Moonshade Earring", augments={'MP+25','TP Bonus +25',}},
					left_ring="Weather. Ring",
					right_ring="Dingir Ring",
					back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}})
								
				sets.WS['Trueflight'].MidACC = set_combine(sets.WS["Trueflight"],{
								neck="Sanctity Necklace",ear1="Digni. Earring"})
								
				sets.WS['Trueflight'].HighACC = set_combine(sets.WS["Trueflight"].MidACC,{
								head="Carmine Mask +1"})
				
				sets.WS['Trueflight'].Fodder = sets.WS['Trueflight']
				
				-- Wildfire --
				sets.WS['Wildfire'] = set_combine(sets.WS["Trueflight"],{ring1="Ilabrat Ring",ear2="Novio earring",hands="Meg. Gloves +2"})
				
				sets.WS['Wildfire'].MidACC = set_combine(sets.WS["Trueflight"].MidACC,{ring1="Ilabrat Ring",ear2="Novio earring",hands="Meg. Gloves +2"})
				
				sets.WS['Wildfire'].HighACC = set_combine(sets.WS["Trueflight"].HighACC,{ring1="Ilabrat Ring",ear2="Novio earring",hands="Meg. Gloves +2"})
				
				sets.WS['Wildfire'].Fodder = sets.WS['Wildfire']
				
				sets.WS['Hot Shot'] = {
								head=empty,neck="Iskur Gorget",ear1=empty,ear2=empty,body=empty,hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",back=empty,waist="Yemaya Belt",legs=empty,feet="Orion Socks +3"}
				
				sets.WS['Hot Shot'].MidACC = set_combine(sets.WS['Hot Shot'],{legs="Adhemar Kecks +1"})
				
				sets.WS['Hot Shot'].HighACC = set_combine(sets.WS['Hot Shot'].MidACC,{ear2="Telos Earring"})
				
				sets.WS['Hot Shot'].Fodder = sets.WS['Hot Shot']
				
				-- Exenterator --
				
				sets.WS['Exenterator'] = {
							head="Mummu Bonnet +1",neck="Fotia Gorget",ear1="Zennaroi Earring",ear2="Digni. Earring",body="Meg. Cuirie +2",hands="Mummu Wrists +1",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},waist="Fotia Belt",legs="Meg. Chausses +2",feet="Thereoid Greaves"}
				
				sets.WS['Evisceration'] = sets.WS['Exenterator']
				
				
				              
         
                -- JA Sets --
                sets.JA = {}
                sets.JA.Shadowbind = {
                                head="Orion Beret +3",neck="Iskur Gorget",ear1="Enervating Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks +1",feet="Meg. Jam. +2"}
         
                sets.JA.Scavenge = {feet="Orion Socks +3"}
               
                sets.JA.Camouflage = {body="Orion Jerkin +3"}
               
                sets.JA.Sharpshot = {legs="Orion Braccae +2"}
               
                sets.JA["Bounty Shot"] = {hands="Amini Glove. +1",waist="Chaac Belt"}
               
                sets.JA["Double Shot"] = {head="Amini Gapette +1"}
               
                sets.JA["Eagle Eye Shot"] = {
                                head="Orion Beret +3",neck="Iskur Gorget",ear1="Enervating Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Yemaya Belt",legs="Arcadian Braccae",feet="Meg. Jam. +2"}
				
				sets.JA["Barrage"] = set_combine(sets.Midshot, 
								{body="Orion Jerkin +3",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",feet="Mummu Gamash. +1",ring1="Regal Ring",ring2="Cacoethic Ring +1"})
         
                -- Waltz Set --
                sets.Waltz = {head="Mummu Bonnet +1"}
         
                sets.Precast = {}
                -- Fastcast Set --
                sets.Precast.FastCast = {
                                head="Carmine Mask +1",neck="Baetyl Pendant",ear1="Loquac. Earring",ear2="Etiolation earring",body="Dread Jupon",hands="Leyline Gloves",ring1="Weather. Ring",ring2="Defending Ring",waist="Rumination Sash",legs="Carmine Cuisses +1",feet="Carmine Greaves +1"}
               
                -- Utsusemi Precast Set --
                sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast,{neck="Magoraga Beads"})
         
                sets.Midcast = {}
               
                -- Magic Haste Set --
                sets.Midcast.Haste = set_combine(sets.PDT,{})
        end
         
        function pretarget(spell,action)
                if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
                        cancel_spell()
                        send_command('input /item "Echo Drops" <me>')
                elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
                        cancel_spell()
                        send_command('Aggressor')
                elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
                        cancel_spell()
                        send_command('ThirdEye')
                elseif spell.english == "Meditate" and player.tp > 290 then -- Cancel Meditate If TP Is Above 290 --
                        cancel_spell()
                        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
                elseif (spell.english == 'Ranged' and spell.target.distance > 24.9) or (player.status == 'Engaged' and ((ranged_ws:contains(spell.english) and spell.target.distance > 16+target_distance) or (spell.type == "WeaponSkill" and not ranged_ws:contains(spell.english) and spell.target.distance > target_distance))) then -- Cancel Ranged Attack or WS If You Are Out Of Range --
                        cancel_spell()
                        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
                        return
                end
        end
         
        function precast(spell,action)
                if spell.english == 'Ranged' then
					equipSet = sets.Preshot
					add_to_chat(57,"Flurry Level "..PreshotArray[PreshotIndex])
				if buffactive['Flurry'] then
					add_to_chat(122,"Flurry found")
				if PreshotArray[PreshotIndex] == 'RDM' then
				if  equipSet[player.equipment.range].RDM then 
					equipSet =  equipSet[player.equipment.range].RDM
				end
		else
				if  equipSet[player.equipment.range].Any then 
					equipSet =  equipSet[player.equipment.range].Any
		end
		end
		else
				if  equipSet[player.equipment.range] then 
					equipSet =  equipSet[player.equipment.range]
		end
					add_to_chat(122,"No flurry")
		end
   
					equip(equipSet)
			
			
                elseif spell.type == "WeaponSkill" then
                        if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
                                cancel_spell()
                                add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
                                return
                        else
                                equipSet = sets.WS
                                if equipSet[spell.english] then
                                        equipSet = equipSet[spell.english]
                                end
                                if equipSet[AccArray[AccIndex]] then
                                        equipSet = equipSet[AccArray[AccIndex]]
                                end
                                if player.tp > 2249	 or buffactive.Sekkanoki then
                                        if spell.english == "Last Stand" then -- Equip Telos Earring When You Have 3000 TP or Sekkanoki For Last Stand --
                                                equipSet = set_combine(equipSet,{ear2="Telos Earring"})
                                        elseif spell.english == "Jishnu's Radiance" then -- Equip Telos Earring When You Have 3000 TP or Sekkanoki For Jishnu's Radiance --
                                                equipSet = set_combine(equipSet,{ear2="Telos Earring"})
                                        elseif spell.english == "Trueflight" then --Equip Ishvara Earring When you have 3000 TP or Sekkanoki for Trueflight --
												equipSet = set_combine(equipSet,{ear2="Ishvara Earring"})
										end
                                end
                                equip(equipSet)
                        end
                elseif spell.type=="JobAbility" then
                        if sets.JA[spell.english] then
                                equip(sets.JA[spell.english])
                        end
                elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                        if string.find(spell.english,'Utsusemi') then
                                if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
                                        cancel_spell()
                                        add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
                                        return
                                else
                                        equip(sets.Precast.Utsusemi)
                                end
                        else	
                                equip(sets.Precast.FastCast)
                        end
                elseif spell.type == "Waltz" then
                        equip(sets.Waltz)
                elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
                        cast_delay(0.2)
                        send_command('cancel Sneak')
                end
        end
		


		
        function midcast(spell,action)
                if spell.english == 'Ranged' then
                        equipSet = sets.Midshot
                        if equipSet[player.equipment.range] then
                                equipSet = equipSet[player.equipment.range]
                        end
                        if equipSet[AccArray[AccIndex]] then
                                equipSet = equipSet[AccArray[AccIndex]]
                        end
						
                        if buffactive.Barrage and equipSet["Barrage"] then
                                equipSet = equipSet["Barrage"]
                        end
						if buffactive['Double Shot'] and equipSet["Doubleshot"] then
								equipSet = equipSet["Doubleshot"]
						end
						if buffactive['Camouflage'] and equipSet["Camouflage"] then
								equipSet = equipSet["Camouflage"]
						end
						
						
                        equip(equipSet)
						
                elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                        if string.find(spell.english,'Utsusemi') then
                                if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
                                        send_command('@wait 1.7;cancel Copy Image*')
                                end
                                equip(sets.Midcast.Haste)
                        elseif spell.english == 'Monomi: Ichi' then
                                if buffactive['Sneak'] then
                                        send_command('@wait 1.7;cancel sneak')
                                end
                                equip(sets.Midcast.Haste)
                        else
                                equip(sets.Midcast.Haste)
                        end
                end
						if spell.english == "Trueflight" and (buffactive['Aurorastorm']) then
						add_to_chat(125,'weather mode') 
						equip({waist="Hachirin-no-Obi"})
					
				end
						if spell.english == "Wildfire" and (buffactive['Firestorm']) then
						add_to_chat(125,'weather mode')
						equip({waist="Hachirin-no-Obi"})
				end
				
		
    end
 
        
         
        function aftercast(spell,action)
                if spell.english == 'Ranged' and autoRAmode==1 then
                        autoRA()
                elseif spell.type == "WeaponSkill" and not spell.interrupted then
                        send_command('wait 0.2;gs c TP')
                else
                        status_change(player.status)
                end
        end
         
        function status_change(new,old)
                if Armor == 'PDT' then
                        equip(sets.PDT)
                elseif Armor == 'MDT' then
                        equip(sets.MDT)
                elseif new == 'Engaged' then
                        equipSet = sets.Melee
                        if equipSet[AccArray[AccIndex]] then
                                equipSet = equipSet[AccArray[AccIndex]]
                        end
                        equip(equipSet)
                else
                        equip(sets.Idle[IdleArray[IdleIndex]])
                end
        end


         
        -- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
        function self_command(command)
                if command == 'acc' then -- Accuracy Level Toggle --
                        AccIndex = (AccIndex % #AccArray) + 1
                        add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
                        status_change(player.status)
				elseif command == 'flur' then -- Flurry Level Toggle --
						PreshotIndex = (PreshotIndex % #PreshotArray) + 1
						add_to_chat(158,'Flurry Level: ' ..PreshotArray[PreshotIndex])
						status_change(player.status)
                elseif command == 'auto' then -- Auto Update Gear Toggle --
                        status_change(player.status)
                        add_to_chat(158,'Auto Update Gear')
                elseif command == 'pdt' then -- PDT Toggle --
                        if Armor == 'PDT' then
                                Armor = 'None'
                                add_to_chat(123,'PDT Set: [Unlocked]')
                        else
                                Armor = 'PDT'
                                add_to_chat(158,'PDT Set: [Locked]')
                        end
                        status_change(player.status)
                elseif command == 'mdt' then -- MDT Toggle --
                        if Armor == 'MDT' then
                                Armor = 'None'
                                add_to_chat(123,'MDT Set: [Unlocked]')
                        else
                                Armor = 'MDT'
                                add_to_chat(158,'MDT Set: [Locked]')
                        end
                        status_change(player.status)
                elseif command == 'C8' then -- Distance Toggle --
                        if player.target.distance then
                                target_distance = math.floor(player.target.distance*10)/10
                                add_to_chat(158,'Distance: '..target_distance)
                        else
                                add_to_chat(123,'No Target Selected')
                        end
                elseif command == 'C6' then -- Idle Toggle --
                        IdleIndex = (IdleIndex % #IdleArray) + 1
                        add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
                        status_change(player.status)
                elseif command == 'AutoRA' then -- Auto Ranged Attack Toggle. *Don't Rely On This. It Isn't As Fast As Shooting Manually. It Is Mainly For AFK or When You Dualbox* --
                        if autoRAmode == 0 then
                                autoRAmode = 1
                                add_to_chat(158,'AutoRA Mode: [ON]')
                        else
                                autoRAmode = 0
                                add_to_chat(123,'AutoRA Mode: [OFF]')
                        end
                elseif command == 'TP' then
                        add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
                elseif command:match('^SC%d$') then
                        send_command('//' .. sc_map[command])
                end
        end
         
        function autoRA()
                send_command('@wait 2.5; input /ra <t>')
        end