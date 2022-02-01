"Bijeg iz dvorca" by Barbara Tatai

The display banner rule is listed before the when play begins stage rule in the startup rules.
Include Music by Daniel Stelzer.
Release along with the "Quixe" interpreter.
Release along with cover art ("Dvorac cover").

When play begins:
	say "[Bold type]Ime ti je Matovilka te otkako znaš za sebe zatočena si u dvorcu. Svaku večer te tvoja zla maćeha Gertruda zaključa u tvoju sobu s tvojim vjernim prijateljicama, zmajem Penelopom i mačkom Kleopatrom. Cijeli život si čekala priliku da Gertruda pogriješi, a danas si ju dočekala. Gertruda te u žurbi na novogodišnji bal zaboravila zaključati, a  znaš da se kopija ključa glavnog izlaza nalazi negdje u njezinoj sobi. Odlučila si zgrabiti ovu priliku te napokon pobjeći i biti slobodna. Imaš vremena do ponoći da pobjegneš![Paragraph Break]"; now the time of day is 11:30 pm; now the left hand status line is "Vrijeme:[time of day] 31. prosinac"; now the printed name of Vrata glavne sobe is "Vrata 1".
Sound of Vatra is the file "fireplace.ogg".
Sound of Vrata is the file "vrata.ogg".
Sound of Ormar is the file "ormar.ogg".
Sound of Vjetar is the file "wind.ogg".
Sound of Lia is the file "pas.ogg".
Sound of Penelopa is the file "dragon.ogg".

Figure of Glavni kljuc is the file "kljuc.jpg".
Figure of Kleopatra is the file "kleo.png".
Figure of Penelopa is the file "penelopa.jpg".
Figure of Gertruda is the file "maceha.png".

Pogledaj kljuc is an action applying to nothing.
Understand "kljuc" as pogledaj kljuc.

Pogledaj kleopatru is an action applying to nothing.
Understand "kleopatra" as pogledaj kleopatru.

Pogledaj penelopu is an action applying to nothing.
Understand "penelopa" as Pogledaj penelopu.

Pogledaj gertrudu is an action applying to nothing.
Understand "gertruda" as Pogledaj gertrudu.

After pogledaj kljuc:
	display the Figure of Glavni kljuc;
	continue the action.
	
After pogledaj penelopu:
	display the Figure of Penelopa;
	continue the action.
	
After pogledaj kleopatru:
	display the Figure of Kleopatra;
	continue the action.
	
After pogledaj gertrudu:
	display the Figure of Gertruda;
	continue the action.
	
Every turn:
	If the time of day is before 12:00 am:
		if the time of day is 11:40 pm:
			say "Imaš još 20 minuta da pobjegneš";
		if the time of day is 11:50 pm:
			say "Imaš još 10 minuta da pobjegneš!";
	otherwise:
		end the story saying "Nažalost, ponoć je prošla te se Gertruda vratila u dvorac. :(".
		
	
Matovilkina soba is the room. "Tvoja soba nalazi se u tornju dvorca. Iznenađujuće, soba je poprilično velika te se u njoj nalazi predivan veliki krevet, ormar, violina te sve potrebno za Kleopatru i Penelopu. Ono što te podsječa na tvoje zatočeništvo su dva prozora sa željeznim rešetkama.[Paragraph Break]Južno od sobe nalazi se hodnik."
Velika drvena vrata is a door. Velika drvena vrata is unlocked. Velika drvena vrata is south of Matovilkina soba and north of Hodnik. The description of Velika drvena vrata is "Vrata tvoje sobe koja vode u hodnik.". 

Violina is a thing. Violina is here. The description of Violina is "Dar tvoga voljenog oca."

After taking Violina:
	say "Bit će malo teže pobjeći s ovim, ali ne mogu je ostaviti tu.";
	continue the action.

Prozori is in Matovilkina soba. It is scenery. The description of prozori is "Dva prozora koja se protežu od poda do stropa, predivnog zaobljenog oblika. Ukrašavaju ih raskošne zlatne zavjese i željezne rešetke. Da nema rešetki, već bi odletjela na Penelopi."

Instead of taking Prozori:
	say "Kako si mislila ponijeti prozore?!";
	stop the action.

Penelopa is animal in Matovilkina soba. The description of Penelopa is "Penelopa je manja vrsta zmaja ljubičaste boje. Kao mala si ju pronašla u šumi zajedno s Kleopatrom. Penelopa je, iako godinama s tobom, vrlo mlad zmaj te ne zna još rigati vatru. Da zna, odavno bi zapalila Gertrudu! ".
Kleopatra is animal in Matovilkina soba. The description of Kleopatra is "Kleopatra je bijela micika koja te vjerno prati svuda. Vrlo je umiljata, osim kad vidi Gertrudu.".

Table of Penelopa Responses
Topic	Response	Index
"Bijeg"	"Mislim da bolju šansu nećemo imati!"	"Bijeg"
"Hrana"	"Mislim da bi trebali ponijeti nešto za pojest"	"Hrana"
"Vrijeme"	"Sada je [time of day]."	"Vrijeme"

After asking Penelopa about something:
	if the topic understood is a topic listed in the Table of Penelopa Responses:
		say "[Response entry]";
	otherwise:
		say "Ne znam što bih rekla.".

After opening Velika drvena vrata:
	now the sound channel of Sound of Vrata is the foreground;
	internally play  Sound of Vrata on the foreground repeating 1 time;
	say "Otvorila si vrata svoje sobe.";
	continue the action.

KretanjeUSobu is a truth state that varies. KretanjeUSobu is false. 
KretanjeUDnevni is a truth state that varies. KretanjeUDnevni is false. 
KretanjeUDvoriste is a truth state that varies. KretanjeUDvoriste is false. 

After opening Vrata glavne sobe:
	if KretanjeUSobu is false:
		now Kleopatra is in Glavna soba;
		now Penelopa is in Glavna soba;
		now KretanjeUSobu is true;
		continue the action.
		
After opening Prolaz u Dnevni:
	if KretanjeUDnevni is false:
		now  Kleopatra is in Dnevna soba;
		now  Penelopa is in Dnevna soba;
		now  KretanjeUDnevni is true;
		continue the action.
		
After opening Izlazna vrata:
	if KretanjeUDvoriste is false:
		now  Kleopatra is in Dvoriste;
		now Penelopa is in Dvoriste;
		now  KretanjeUDvoriste is true;
		continue the action.
	
Hodnik is the room. "U hodniku se nalazi mnogo vrata, no tebi su bitna samo ona od Gertrudine sobe. Jedini problem je što ne znaš koja vrata vode do njezine sobe. Pročitaj natpise na vratima da saznaš! Budući da je mrak u Gertrudinoj sobi, trebala bi uzeti i lanternu! Nakon toga, trebaš proći južnim prolazom prema Dnevnoj sobi.".
Lanterna is a thing. It is in Hodnik.. The description of Lanterna is "Mala tamno zelena lanterna.". Svijeca is a thing. Svijeca is in lanterna. Svijeca can be lit and unlit. Svijeca is unlit.

Instead of going to Glavna soba:
	if we have not taken Lanterna:
		say "Uzmi lanternu." ;
	otherwise:
		if Svijeca is lit:
			say "Sad imaš izvor svijetlosti pa možeš u Gertrudinu sobu.";
			continue the action;
		otherwise:
			say "Moraš upaliti svijeću u lanterni.";
			stop the action.

Understand the command "zapali” as something new.
Paljenje is an action applying to one thing.
Understand “zapali [something]” as paljenje.

After paljenje for the first time:
	now Svijeca is lit;
	say "Zapalila si svijeću";
	continue the action.

ProcitajNatpis is a truth state that varies. ProcitajNatpis is false. 
Understand "Vrata 1" as Vrata glavne sobe when the printed name of Vrata glavne sobe is "Vrata 1".
Vrata 2 is a door. Vrata 2 is in hodnik. Vrata 2 is closed and locked. Vrata 2 is west of Hodnik.
Vrata glavne sobe is a door. Vrata glavne sobe is closed and unlocked. Vrata glavne sobe contains a natpis. The description of natpis is "[Bold type]Glavna soba - Gertruda[Paragraph break]". Vrata glavne sobe is east of Hodnik and west of Glavna soba. The description of Vrata glavne sobe is "Predivna drvena vrata koja možda vode do sobe u koju trebaš ići.". 

Understand the command “procitaj” as something new.
Citanje is an action applying to one thing.
Understand “procitaj natpis [something]” as Citanje.

Check citanje when the noun is not Vrata glavne sobe: say “Kriva soba nažalost.” instead.
Report citanje: say the description of the natpis.

After citanje:
	now the description of Vrata glavne sobe is "Predivna drvena vrata koja vode do Gertrudine sobe. Nalaze se istočno od hodnika.";
	say "Znači ovo su Vrata glavne sobe!";
	now the printed name of Vrata glavne sobe is "Vrata glavne sobe.";
	now ProcitajNatpis is true;
	continue the action.

Before opening Vrata glavne sobe:
	if ProcitajNatpis is false:
		say "Prvo provjeri je li ovo usitinu Gertrudina soba.";
		stop the action;
	otherwise:
		now the sound channel of Sound of Vrata is the foreground;
		internally play  Sound of Vrata on the foreground repeating 1 time;
		say "Otvorila si vrata glavne sobe";
		continue the action.

Glavna soba is the room. "Glavna soba je Gertrudina soba, najveća soba u dvorcu. U njoj se nalazi kraljevski krevet, njezin omiljeni ljubimac tvor Otto koji je u kavezu, ormar, noćni ormar te komoda. U njoj se negdje također nalazi ključ glavnih vrata dvorca, pronađi ga! Zapadno se nalaze Vrata glavne sobe!".
Krevet is scenery. description of krevet is "Gertrudin kraljevski krevet.".
Krevet is in Glavna soba. 
Otto is an animal. 
Kavez is fixed in place.  Otto is in kavez. Kavez is in Glavna soba. 
The description of Kavez is "Kavez u kojem je tvor Otto. Dobro da je u kavezu jer bi ga Kleopatra inače imala za večeru!".
The description of Otto is "Gertrudin ljubimac.".

Instead of taking Otto:
	say "Ne možeš ga uzeti. Micika će ga pojest.".
Instead of taking Kavez:
	say "Ne možeš nositi još i kavez.".

Komoda is a container. Komoda is openable and closed. Komoda is in Glavna soba. Komoda is fixed in place. The description of Komoda is "Velika drvena komoda napravljena od hrasta i stakla. Pogledaj je li u njoj negdje ključ."
Nocni ormar is a container. Nocni ormar is openable and closed. Nocni ormar is in Glavna soba. Nocni ormar is fixed in place. The description of Nocni ormar is "Drveni noćni ormarić s jednom ladicom, pogledaj što se nalazi u njemu!"

Dnevnik is a thing. It is in Nocni ormar. The description of Dnevnik is "Običan prastari dnevnik u kojem tvoja zla maćeha vjerojatno opisuje kako muči ljude!".
Glavni kljuc is a thing. It is in Komoda. Glavni kljuc can be discovered or undiscovered. Glavni kljuc is undiscovered. The description of Glavni kljuc is "Starinski zlatni ključ koji oključava glavna vrata dvorca.".

After opening Komoda:
	say "Vidi tu je glavni ključ!";
	now the sound channel of Sound of Ormar is the foreground;
	internally play  Sound of Ormar on the foreground repeating 1 time;
	continue the action.
	
After opening Nocni ormar:
	now the sound channel of Sound of Ormar is the foreground;
	internally play  Sound of Ormar on the foreground repeating 1 time;
	continue the action.

After taking Glavni kljuc:
	now Glavni kljuc is discovered;
	say "Uzela si kljuc za izlazna vrata.";
	continue the action.
	
After taking Dnevnik:
	say "Uzela si Gertrudin dnevnik.";
	continue the action.

Prolaz u dnevni is a door. Prolaz u dnevni is closed and unlocked. Prolaz u dnevni is south of Hodnik and north of Dnevna soba. 
Dnevna soba is room. "Raskošna dnevna soba s velikim kaminom u kojem gori vatra. Na stolu u kutu nalazi se hrana. Mogla bi si uzeti malo za put. Sjeverno se nalazi Prolaz prema hodniku. Zapadno se nalaze izlazna vrata - tvoj spas!".

After going to Hodnik:
	stop Sound of Vatra;
	continue the action.

After going to Dnevna soba:
	now the sound channel of  Sound of Vatra is the foreground;
	internally play Sound of Vatra on the foreground repeating 20 times;
	continue the action.

Kamin is scenery in Dnevna soba. The description of kamin is "Ogroman kamin od cigle.".
Vatra is in Kamin. Vatra is scenery. The description of Vatra is "Čuje se pucketanje vatre u kaminu.".
Stol is scenery. It is in dnevna soba. "Stol u kutu sobe s hranom.".
Hrana is on Stol. Hrana is edible. The description of Hrana is "Grožđe, sir, rajčica, masline i šipak!".

After taking hrana:
	say "Ovo će dobro doći za put!".
	
Instead of eating hrana:
	say "Ostavi hranu za put. Trebat će ti!".
	
Izlazna vrata is a door. Izlazna vrata can be locked and unlocked. Izlazna vrata is closed and locked. Izlazna vrata is south of Dvoriste and west of Dnevna soba. The description of Izlazna vrata is "Najveća vrata koja su izlaz iz dvorca. Stara su i škripe, pazi kako ih otvaraš!". The matching key of Izlazna vrata is Glavni kljuc. 

Instead of opening Izlazna vrata:
	if Izlazna vrata is locked:
		if Glavni kljuc is discovered:
			say "Prvo otključaj vrata s ključem koji si našla.";
			stop the action;
		otherwise:
			say "Vrati se u Gertrudinu sobu po ključ." ;
			stop the action;
	otherwise:
		now the sound channel of Sound of Vrata is the background;
		internally play  Sound of Vrata on the background repeating 1 time;
		say "Otvorila si Izlazna vrata.";
		continue the action.

Dvoriste is room.
Lia is an animal in Dvoriste. Lia is either awake or asleep. Lia is awake. "[if awake]Lia je ovdje, veliki njemački ovčar koji čuva dvorac noću. Moram ju pomaziti da me pusti.[otherwise]Ako ne čuva dvorac, onda spava.[end if]".

After going to Dvoriste:
	if Lia is awake:
		now the sound channel of  Sound of Lia is the foreground;
		internally play Sound of Lia on the foreground repeating 10 times;
	now the sound channel of  Sound of Vjetar is the background;
	internally play Sound of Vjetar on the background repeating 20 times;
	continue the action.

Understand the command “pomazi” as something new.
Mazenje is an action applying to one visible thing.
Understand “pomazi [someone]” as mazenje.

Check mazenje when the noun is not Lia: say “Liu trebaš pomaziti da te pusti.” instead.

After mazenje:
	now Lia is asleep;
	stop Sound of Lia;
	now the sound channel of Sound of Penelopa is the foreground;
	internally play  Sound of Penelopa on the foreground repeating 2 times;
	end the story saying "Čestitam, uspjela si se spasiti! Odletjela si na Penelopi.".
	



