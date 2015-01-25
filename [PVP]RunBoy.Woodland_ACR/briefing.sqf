waitUntil {!isNull player && player == player};

player createDiarySubject ["thecrazylegendarys","The Crazy Legendarys"];
player createDiarySubject ["briefing","Briefing"];
player createDiarySubject ["credits","Credits"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/	
	
	player createDiaryRecord ["briefing",
		[
			"Communication", 
				"
				It is important to keep in contact with your team mates. Commander Kelly will update each squad with positions of enemy/friendly forces. Obviously you have to follow his and your Squad-Leaders orders! If communication is not possible any more, stick to the plan and execute it soldier. RTB when your job is done.
				"
		]
	];
	
	player createDiaryRecord ["briefing",
		[
			"Mission", 
				"
				 Our mission is to find and rescue the independent soldier. His position is unknown but it is our task to change that. As soon as we found him we will bring him to a safehouse. Due to security reasons we can not tell you where the safehouse will be, but you will know soon enough. Be aware of enemy Opfor forces and patrols. They have a slight time advantage and a air superiority. We will focus on heavy ground units.
				"
		]
	];
	
	player createDiaryRecord["briefing",
		[
			"Situation",
				"
				Mission Atomic Fox was a huge success gentleman. Unfortunately Opfor forces have taken a hostage from our independent friends. Colonel Kablamz from the independent forces says that the hostage was able to flee. He states that the soldier was able to halo jump out of a plane during the transport to the Opfor base. His current position is unknown but we know that he landed somewhere two clicks away from the marker <marker name='descriptionM_Jump'>Halo Jump Pos</marker>. Our problem is that the Opfor units have this intel and are defiantly trying to rescue him as well. 	
				"
		]
	];
	
	player createDiaryRecord ["briefing",
		[
			"Support", 
				"
				 No further support.
				"
		]
	];
	
// The Crazy Legendarys
	player createDiaryRecord ["thecrazylegendarys",
		[
			"Teamspeak",
				"
				You can find our Teamspeak at:<br/>
				altis.thecrazylegendarys.eu<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["thecrazylegendarys",
		[
			"Website/Forums",
				"
				Blog:<br/>
				www.thecrazylegendarys.eu/<br/>
				<br/>
				Forum:<br/>
				forum.thecrazylegendarys.eu/<br/>
				"
		]
	];
	
	player createDiaryRecord["credits",
		[
			"Credits",
				"
				Thanks to the mod-makers of the great mods we used:<br/>
				ACRE TEAM - 			<t align='right'> ACRE 2 </t><br/>			
				CBA Team - 				<t align='right'> CBA A3 </t><br/>
				LordJarhead - 			<t align='right'> JSRS 2.1 </t><br/>
				Alduric - 				<t align='right'> ARMA 3 MapPack </t><br/>
				KoffeinFlummi - 		<t align='right'> AGM </t><br/>
				Tonic - 				<t align='right'> VAS </t><br/>
				Titi and McKeewa - 		<t align='right'> CJTF101 Editor </t><br/>
				NorX_Aengell - 			<t align='right'> XENO Taru Pod Mod </t><br/>
				kju -		 			<t align='right'> CUP </t><br/>
				
				"
		]
	];
	