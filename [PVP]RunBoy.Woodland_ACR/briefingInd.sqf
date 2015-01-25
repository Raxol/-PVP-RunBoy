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
				It is important to keep in contact with your team mates. (Nevermind no friends...) Obviously you have to follow his and your Squad-Leaders orders! If communication is not possible any more, stick to the plan and execute it soldier. RTB when your job is done.
				"
		]
	];
	
	player createDiaryRecord ["briefing",
		[
			"Mission", 
				"
				 You managed to flee! Good boy. Now run for your life and hope the blufor forces will find you first. Scout the area maybe you can find some supply. If you manage to make contact with Blufor forces they will guide you to a safehouse. Stay there until independent forces will get you back to base.
				"
		]
	];
	
	player createDiaryRecord["briefing",
		[
			"Situation",
				"
				You are thirsty, hungry and just jumped out of a plane. No equipment, no communication. Use your feetzis and run! Two forces are looking for you. One of them will resue you the other will kill you. 
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
	