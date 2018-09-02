"Tokyo" by Luxon JEAN-PIERRE  


Include French by Eric Forgeot.
Use French 1PSPr language.

Include Basic Screen Effects by Emily Short.

[*************************************
	   Version Z-Machin
*************************************]
[Include Vorple Core by The Vorple Project.

Release along with the "Vorple" interpreter.]

[************************************
	    Version GLUX
*************************************]

[Release along with the "Vorple" interpreter.]
Release along with an interpreter.

[*Debut du jeu*]

When play begins :
	say "La chaleur...Les odeurs...Le bruit des roues...Les secousses...Les grincements...Le cri strident des freins...La ligne Marunouchi du métro tokyoïte s'arrête à l'arrêt Nishi-Shinjuku...Je suis arrivée...Je descends enfin de la rame...Il fait frais...J'aime...! [line break]Les rues sont illuminées par les décorations...On approche de Noël...On ne fête pas vraiment Noël, c'est vrai...Enfin...Je suis en bas de chez moi...Il fait chaud...Je me mets à l'aise...";
	now the command prompt is "$ ";


Tokyo is a region.


 [***********************************************************************************************************
									Premiere scene
 ***********************************************************************************************************]

Prologue is a scene. Prologue begins when the player is in Entrée du studio.
Prologue ends when the player is in Les escaliers Etage 2;



	
[*Declaration des rooms du début*]
Appartement is a region.
Entrée du studio is a dark room."Enfin chez soi ! Je vais me reposer dans le salon, à ma gauche.". Entrée du studio is in Appartement.
salon is a dark room."Rien a changer depuis ce matin. La mezzanine en haut du salon non plus.". salon is in Appartement.
mezzanine is a dark room."". mezzanine is in Appartement.

Entrée du studio is east of salon.
mezzanine is up of salon.



[Les torches]

t0 is an object in Entrée du studio . t0 is lit. t0 is undescribed.
t1 is an object in salon . t1 is lit. t1 is undescribed.
t2 is an object in mezzanine . t2 is lit. t2 is undescribed.


Instead of taking t0: say "????";
Instead of taking t1: say "????";
Instead of taking t2: say "????";



[Les object et supporter]

tv is a supporter in salon.
bureau is a supporter. bureau is in salon.
ordinateur is a object. ordinateur is on bureau.
smartphone is an object on bureau. 

lampe torche is an object in mezzanine. lampe torche is lit. lampe torche is undescribed.

before taking lampe torche :
	if info is 1 :
		say "hein !!";
		stop the action;

after taking lampe torche :
	say "On voit un peu mieux maintenant. [line break] Mon smartphone sonne, Qui peut bien m'appeler à cette heure-là ? Il est presque 1 heure du matin.";
	now var_smart is 1;
	now the description of salon is "C'est si silencieux !";
	now the description of Entrée du studio is "Je ferais mieux de sortir pour voir ce qu'il se passe.";
	


Understand "pc/ordi" as ordinateur.
Understand "telephone/mobile/phone/smart" as smartphone.



[Traitement dans la region Appart]

To begin the day :
	say "...";
	wait for any key;
	say "......zzz........";
	wait for any key;
	say "......zzzzzzz........";
	wait for any key;
	say "'Clic'[line break]";
	wait for any key;
	if watch is 1 :
		say "Mince... Je me suis endormi devant la tv";
		now watch is 0;
	otherwise :
		say  "Ma tête...je me suis endormie devant le pc...";



[********************************************
	Examen (2 voies possibles)
 ********************************************]


Instead of examining tv :
	if watch is 1 :
		say "J'allume la tv et je tombe sur un film d'espionnage....je m'assoupis...zzzz...";
		now tv_var is 1;
		wait for any key;
		begin the day; 
	otherwise :
		if tv_var is 1:
			say "La tv se coupe, plus de courant....Pas de lumière non plus !";
			say "Je tente de remettre la lumière... Rien ! Il n'y a plus de courant.";
			say "Il faut que je trouve de quoi eclairer le salon ";
			now info is 0;
			now lampe torche is described;
			now t0 is in dust_bin;
			now t1 is in dust_bin;
			now t2 is in dust_bin;
		otherwise :
			say "Inutil de regarder la tv.";
			if var_smart is 1:
				say "[line break]Mon smartphone sonne toujours[line break]";
	
	
Instead of examining ordinateur :
	if watch is 1 :
		say "J'allume mon pc. Je lance mon projet. [line break] Je code comme une folle...je corrige...je code...je débogue...zzzz...";
		now pc_var is 1;
		now watch is 0;
		wait for any key;
		begin the day; 
	otherwise :
		if pc_var is 1:
			say "Je me remets au travail... Plus rien, plus de lumière ! Mon pc s'est coupé.... Je le rallume... Rien !";
			say "Il fait noir.... Je tente de remettre la lumière... Rien ! Il n'y a plus de courant.";
			say "Il faut que je trouve de quoi eclairer le salon.";
			now info is 0;
			now pc_var is 0;
			now lampe torche is described;
			now t0 is in dust_bin;
			now t1 is in dust_bin;
			now t2 is in dust_bin;
		otherwise:
			say "Cela ne me servirait à rien d'utiliser le pc.";
			if var_smart is 1:
				say "[line break]Mon smartphone sonne toujours[line break]";

[Les instead]

Instead of taking  ordinateur:
	say "Il est bien là où il est.";
	
	
Before going to Les escaliers Etage 7 :
	if the player is in Entrée du studio:
		if out is 0 :
			say "Hummm, en fait non.";
			stop the action;
		otherwise :
			say "Je sors mes clés de ma poche, j'enfile mon manteau et je sors.[line break]";
	


	


 [***********************************************************************************************************
						Le shutdown
 ***********************************************************************************************************]
Shutdown_ is a scene. Shutdown_ begins when Prologue ends.
When Shutdown_ begins:
	now out is 0;
	
Shutdown_ ends when the player is in La rue.

Immeuble is a region.
Les escaliers Etage 7  is a dark room. "[One of]J'ai l'impression de plonger dans les tenebres....[line break]Je ferme la porte de mon appartement à double tour....[line break]Gumi doit déjà être en bas, je ne devrais pas trop trainer. Il faut descendre.[then purely at random]".
Les escaliers Etage 7 is east of Entrée du studio.
Les escaliers Etage 7 is in Immeuble.

Les escaliers Etage 6 is a dark room. "...".
Les escaliers Etage 6 is in Immeuble.
Les escaliers Etage 6  is down of Les escaliers Etage 7.

Les escaliers Etage 5 is a dark room. "...".
Les escaliers Etage 5 is in Immeuble.
Les escaliers Etage 5  is down of Les escaliers Etage 6.

Les escaliers Etage 4 is a dark room. "...ce silence...".
Les escaliers Etage 4 is in Immeuble.
Les escaliers Etage 4  is down of Les escaliers Etage 5.

Les escaliers Etage 3 is a dark room.  "...".
Les escaliers Etage 3 is in Immeuble.
Les escaliers Etage 3  is down of Les escaliers Etage 4.

Les escaliers Etage 2 is a dark room. "...C'en est presque malsain...".
Les escaliers Etage 2 is in Immeuble.
Les escaliers Etage 2  is down of Les escaliers Etage 3.

Les escaliers Etage 1  is a dark room. "..."
Les escaliers Etage 1 is in Immeuble.
Les escaliers Etage 1  is down of Les escaliers Etage 2.


Rez-de-chaussée is a dark room."Enfin en bas, le hall, peu écliér se trouve à ma droite, je vais enfin sortir".
Rez-de-chaussée is in Immeuble.
Rez-de-chaussée is down of Les escaliers Etage 1.

Hall is a room. "De la lumière ??!!! Non...juste les phares des véhicules dehors qui sont coincés sur la route...Leur lumière atteignent difficilement le hall. Elle n'est pas suffisante pour eclairer la piece, La porte est fermé. Il faut que je prenne mon badge dans ma boite au lettres".
Hall is in Immeuble. Hall is east of Rez-de-chaussée.




porte de l'immeuble is a door. porte is east of Hall.
porte de l'immeuble is closed. porte de l'immeuble is locked.
The matching key of porte de l'immeuble is badge. 

Boite au lettre is a supporter. Boite au lettre is in Hall.
Badge is an object. badge is on Boite au lettre.


Before opening porte de l'immeuble :
	if the player carries badge:
		say "Avec le badge c'est beaucoup mieux.";
	otherwise:
		try silently taking badge;
		try silently opening porte de l'immeuble;
		try silently opening porte de l'immeuble;
		

Before going to Rez-de-chaussée :
	if the player is in Hall :
		say "Il est trop tard pour revenir en arrière";
		stop the action;




[---------------------------------------------------------------------------------------------------
							L'enquete
---------------------------------------------------------------------------------------------------]

L'enquete is a scene. L'enquete begins when Shutdown_ ends.
L'enquete ends when next_ is 1.

La rue is a dark room. "La lumière, qui pénetrait à peine le hall, m'eblouit désormais...Tout à ma hauteur est éclairé. Mais doit tout cela aux phares des véhicules coincés dans les embouteillages. [paragraph break]En levant la tête...c'est...le noir total.Le bruit des moteurs me semblait si faible au vu de la noirceur nocturne. Je n'ai jamais vu un ciel aussi sombre de toute mon existence. Pas d'étoile...Pas de nuage...Pas de Lune...Pas d'avion...Rien....[line break]Je voie Gumi dans le square, de l'autre côté de la rue".
La rue is east of porte de l'immeuble.
La rue is in Tokyo.

Le square is a dark room. "Le square, autrefois un lieu illuminé et d'une beauté sans pareil la nuit, n'est plus qu'un vulgaire terrain mal éclairé...Je dis ça comme si c'était il y a longtemps, alors que j'étais là la veille.....Gumi est là. [paragraph break]'Coucou, désolé de me cacher içi, il faut que je te dise un truc, à propos de la coupure de courant'".
Le square is east of La rue.
Le square is in Tokyo.


Gumi is a man in Le square.
Understand "gumi" as Gumi.

After asking Gumi about "coupure/courant" :
	if the player is in Le square :
		say "'Qu'y a-t-il ??', lui demandé-je";
		wait for space key;
		say "[line break]'Pour être honnête',me répond-telle, 'il se passe des choses louches, j'ai entendu dire qu'il y avait une manifestation écolo dans l'arrondissement de Shinjuku'";
		wait for space key;
		say "[line break]'Heu, d'accord mais ... '";
		wait for space key;
		say "[line break]'Justement. Tu trouves ça normal que des écolos manifestent allegrement alors que la ville est plongée dans le noir ?'";
		wait for space key;
		say "[line break]'Et tu veux qu-on fasse quoi ?'";
		wait for space key;
		say "[line break]'On devrait leur parler. Peut-être qu'ils ont des informations sur ce qui s'est passé. Ils sont peut-être responsable, ça se trouve. D'ailleurs, tu arrive à passer un coup de file ou à envoyer un texto ?'";
		wait for space key;
		say "[line break]'J'ai pas essayer pourquoi ?'";
		wait for space key;
		say "[line break]'Je peux rien faire avec mon tel, en plus c'est une antiquité. tu captes la 3G non ?? Vérifies !'[line break]";
		now var_smart1 is 1;
		now the description of Le square is "...";
	otherwise :
		say "'Tu m'as déjà posé cette question, Miku !'";

After asking Gumi about "reseau/3G" :
	if var_smart1 is 2 :
		now var_smart1 is 3;
		now Gumi is in Keio Plaza;
		say "[line break]'Mais on peut ni avoir de réseau téléphonique ni de connexion 3G. Comment se fait-ce ?' s'écrie Gumi";
		wait for space key;
		say "[line break]'Je n'en sais rien, Gumi. Si tu veux on en parlera après. Allons rendre visite aux écolos'[line break]";
		wait for space key;		
		say "[line break]Nous nous décidons de partir à Shinjuku interroger les écolos. Cela faisait un petit moment que je n'était pas monté sur son scooter. J'enfile le casque que Gumi m'as confié et nous quittons les lieux[line break]";
		now the player is in Keio Plaza;
	otherwise :
		say "'On reparlera de ça plus tard si tu veux'";
		

Instead of examining Gumi :
	say "Je connais Gumi depuis qu'on est au collège. Je la vois comme une soeur. Elle a toujours été généreuse avec moi, et moi de même avec elle. Elle a 24 ans, comme moi. Nos styles vestimentaires, très orientés Sweet Lolita, sont très proches. La couleur de nos cheveux diffère en revanche. Gumi a les cheveux vert alors et moi, je les ai en bleu.[line break]".

Before going east :
	if the player is in La rue :
		say "Je me fraie un chemin entre les véhicule garés et ceux qui sont coincés dans la rue. Tout ça pour arriver dans le square[line break]".
		
Before going west :
	if the player is in Le square :
		say "Non je ne peux pas laisser Gumi en plan[line break]";
		stop the action;

[---------------------------------------------------------------Shinjuku----------------------------------------------------------------------------]		
Shinjuku is a region.
Shinjuku is in Tokyo.		

[------------1ere Partie--------------]


Keio Plaza is a room. "Après un petit bout de chemin, nous arrivons dans l'arrondissement de Shinjuku, un grand quartier d'affaire de la ville, de loin le plus animé au vu des activités dans le quartier...enfin...c'est toujours le cas, mais dans un autre contexte. [paragraph break]Gumi laisse on scooter devant le Keio Plaza. Un hotel très connu dans le quartier. Vu que je ne connais pas trop le quartier, je ferais mieux de lui demander quelques informationsà Gumi.[line break]A l'est d'içi on accède à Odakyu, tandis qu'à l'Est on peut entrer dans l'hotel. Mais mieux vaut rejoindre les écolos".
Keio Plaza is in Shinjuku.		

Odakyu is a room in Shinjuku. "Des manifestants brandissent des pancartes devant le siege d'une entreprise de distribution électrique. Il etait quasi impossible de les lire correctement, malgré la lumière des lampes torche. L'ambiance était festive, ce qui contrastait énormément avec l'atmosphere malsaine de tout à l'heure. Une manifestante ecolo, à moitiée nue, brandissait une une pancatre où il était écrit 'Nuclear. Not in my garden !'[line break] Shinjuku Station est accessible à l'est d'Odakyu, et En continuant tout droit, on atteint Le Lumine, d'après ce que me dit Gumi".
Odakyu is east of Keio Plaza.
Odakyu is in Shinjuku.




Before going to Shinjuku station :
		now Gumi is in Shinjuku station;
		
	
Before going to Odakyu :
	now Gumi is in Odakyu;
	if the player is in Keio Plaza:
		if next_ is 4 :
			say "Non surtout pas !!";
			stop the action;
	otherwise:
		now Gumi is in Odakyu;

manifestante ecolo is a man in Odakyu.
Understand "ecolo/la fille" as manifestante ecolo.

After asking manifestante ecolo about "leader/manif/chef":
	if var_smart1 is 3 :
		now var_smart1 is 4;
		say "'Excusez-moi !!', s'ecrie Gumi";
		wait for space key;
		say "[line break]La jeune femme se retourne et nous toise. Elle est pas si jeune que ça. Elle doit avoir la trentaine. C'est une peu vieux pour une ecolo. J'ai beau tenir ces propos mais Monsieur Beauvais, qui dirige le mouvement écologiste, a au moins la cinquantaine";
		wait for space key;
		say "[line break]'Ouais... Vous voulez quoi les mioches ?'";
		wait for space key;
		say "'Et bien en fait on cherche votre leader.'";
		wait for space key;
		say "Elle continue à nous toiser, à force je trouve cela fort agacant";
		wait for space key;
		say "[line break]'Tu veux voir le chef c'est ça ? Ben t'as qu'a le trouver toi-même. HAHAHAHA !!'";
		wait for space key;
		say "[line break]Elle s'éloigne de nous, fière de son attitude arrogant ";		
	if var_smart1 is 5:
		now bool is 1;
		now var_smart1 is 6;
		say " 'Heu...s'il-vous-plait ";
		wait for space key;
		say "Encore en train de me toiser.";
		wait for space key;
		say "[line break]'Hum, tu as l'air moins sotte que ta copine. Tu veux voir le boss je présume.' ";
		wait for space key;
		say "[line break] 'C'est excate !' ";
		wait for space key;
		say "[line break] ' Ok, c'est bon je te le dis, mais ne laisses pas ta copine fouiner. Il faut que tu ailles à Shinjuku station dans la bouche de métro, mais il te faudra une clé qui est planqué au Lumine. Je n'ai rien d'autre à ajouter' ";
		say "Hum...pourquoi irais-je à l'autre bout du quartier pour trouver une clé ? Elle peut me la donner, ce sera plus rapide[line break]";
		say "'Tu en penses quoi Gumi ?'";
		say "'J'aime pas ça. pour être honnête.'";	
	otherwise:
		say "Elle n'en dira pas plus, décidément";


After asking Gumi about "la fille":
	if var_smart1 is 4:
		now var_smart1 is 5;
		say "'Grrrrr. Je vais lui faire manger ses petit melon !!'";
		wait for space key;
		say "[line break]'Je vais essayer de lui parler'";
		wait for space key;
		say "[line break]'Elle nous a envoyé dans les choux. Elle va pas non plus répondre parce que c'est toi'[line break]";	
	otherwise :
		say "'...Hum...'";
	
After asking Gumi about "quartier" :
	if var_smart1 is 3 :
		say "'Je n'en sais pas plus que toi Miku, allons voir leur leader[line break]";
	otherwise :
		say "'C'est juste un quartier d'affaires pour faire simple !'[line break]";
	
	
	
	
	
[----------------------------------------------------2eme Partie (1ere branche)-----------------------------------------------------]

Le danger is a scene. Le danger begins when next_ is 1.
Le danger ends when the time since Le danger began is 4 minutes.
When Le danger ends: 
	if the player is in Sous-sol du Lumine :
		say "Keuf...Keuf...Mince...Keuf...pourquoi ??...Je ne peux....Keuf...Keuf...";
		wait for space key;
		say "...Raah...";
		wait for space key;
		End the story saying "Ce fut l'histoire d'une jeune femme qui fuinait dans les affaires des autres";
	otherwise :
		say "C'était moins une !!!";


Shinjuku station is a dark room in Shinjuku."C'est beaucoup plus calme que tout à l'heure. La nuit a repris ses droits. La bouche de metro est bouchée par une lourde grille. Elle n'a pas menti sur la nécessité d'avoir une clé, mais cela ne me semble pas logique d'aller la chercher à l'autre bout du quartier. Gumi me dit qu'elle reste içi. Elle ne m'a pas expliquée les raisons de sa décision".
Shinjuku station is east of Odakyu.

Lumine is a dark room in shinjuku. "Le Lumine est un hotel moins prestigieux que le Keio Plaza, mais il est tout aussi bien entretenu. Il est possible que je retrouve quelqu'un....ou pas.".
Lumine is east of Shinjuku station.


Entrée du Lumine is a dark room in Shinjuku."...Encore ce silence...Mais c'est encore pire que dans mon immeuble....Il y a une odeur de putréfaction...Je vois un ascenseur, je vais voir si je peux y acceder. Mais je vois un acces vers les sous-sols. ".
Entrée du Lumine is east of Lumine.

ascenseur is a supporter in Entrée du Lumine.

Sous-sol du Lumine numero 1 is a dark room in Shinjuku."...Une salle remplie d'ordinateur ??? Et ils sont en marche ? Sans doute un groupe électrogène.".


Porte coulissante is a door.
Porte coulissante is up of Sous-sol du Lumine.
Porte coulissante is down of Entrée du Lumine.

Porte coulissante is open.
The matching key of Porte coulissante is smartphone.

laptop is an object in Sous-sol du Lumine.

Understand "ordi ecolo/portable" as laptop.

Instead of examining laptop :
	say "Rien de spécial à signaler, du moins, en apparence. Mais je peux voir une boite mail ouverte. Son utilisateur est toujours connecté. je vais consulté les mails....";
	wait for space key;
	say  "...";
	wait for space key;
	say "Qu'est-ce que ?";
	wait for space key;
	say "C'est un message pour Monsieur Beauvais !! C'est donc lui qui est connecté.";
	say "Je lis le contenu : 'C'est fait, le virus Gnirut fonctionne bien. Le système est compromis, le courant devrait déjà être coupé au moment où j'ecrit ces lignes. La mission est un succes'";
	now next_ is 1;
	
When Le danger begins:
	say "'BOUM'...Un bruit...mais...que...oh non...la porte est fermée et bloquée.[line break]Une vanne s'est ouvert... oohh...cette odeur...au dirait...du Chloroforme... !![line break]";
	now Porte coulissante is closed;
	now next_ is 2;
		

Before going up:
	if the player is in Sous-sol du Lumine :
		if next_ is 3 :
			say "Vite vite !!";
			now the description of Entrée du Lumine is "Enfin de retour !! J'ai...j'ai vraiment cru que...que j'allais y passer...[paragraph break]'BOOUUUM'[paragraph break] Le sous-sol a explosé...";
			now Gumi is in Entrée du Lumine;
		otherwise :
			say "Non...non...non... Il faut que je previennent Gumi.[line break]";		
			stop the action;
			
			

Before going to Sous-sol du Lumine: 
	if next_ is 3 :
		say "Mieux vaut pas y retourner[line break]";
	otherwise:
		say "Je descends prudemment les escaliers menant vers le sous-sol.[line break]";

Instead of examining ascenseur, say "L'ascenseur est bloqué...quelle idote ! Y a plus de courant !".
	

After asking Gumi about "mensonge/Beauvais/poison/explosion" :
	if next_ is 3 :
		say "[line break]'Miku tu vas bien ?'";
		wait for space key;
		say "[line break]'Oui ca va mieux.'";
		wait for space key;
		say "[line break]'Que s'est-t-il passé ?'";
		wait for space key;
		say "'J'étais dans le sous-sol...j'ai vu un pc alumé...je suis allée voir...et je suis tombé sur un courriel destiné à Beauvais...Iça indiquait que la mission etait réussi. A mon avis, l'expéditeur parlait de la coupure de courant'";
		wait for space key;
		say "[line break]'En même temps cela ne m'étonne pas. Il n'ont jamais voulu de cette centrale nucléaire. Il faut prévenir quelqu'un et arreter Beauvais'";
		wait for space key;
		say "[line break]'Cela ne servirait pas à grand chose...il doit être très loin...'";
		wait for space key;
		say "[line break]'Mais non... il est à ...oh non...j'ai compris... la fille de la manif...elle nous a raconté des bobard pour nous tuer..Suis-moi Miku, on va au Keio Plaza, je connais un chemin qui nous y mène sans avoir à repasser devant les manifestants.'";
		wait for space key;
		now next_ is 4;
		now Gumi is in Keio Plaza Rez-de-chaussée;
		now the player is in Keio Plaza Rez-de-chaussée;
	
	
[------------2eme Partie (2eme branche)--------------]	

Keio Plaza Rez-de-chaussée is a room in Shinjuku. "Cette hotel mérite bien ses 5 étoiles. Le sol est tellement brillant que l'on peut voir nos reflets. Le bureau d'accueil est fait en un bois massif très travailler. Et un receptionniste se tiens là.Je devrais le saluer.".
Keio Plaza Rez-de-chaussée is west of Keio Plaza.

Before going to Keio Plaza Rez-de-chaussée :
	if the player is in Keio Plaza :
		now next_ is 4;
		now the description of Keio Plaza is "Il serait mieux de ne pas aller à Odakyu";
		
		
receptionniste is a man in Keio Plaza Rez-de-chaussée.


	
Keio Plaza Etage 1 is a room in Shinjuku. "Le couloir de l'étage est éclairé par des bougies. On s'y sent bien. C'est beaucoup plus sécurisant. La chambre indiquée par le receptionniste est à notre droite".
Keio Plaza Etage 1 is up of Keio Plaza Rez-de-chaussée.

Chambre is a room in Shinjuku. "La pièce semble confortable. On pourrait presque s'y allonger et dormir comme un bébé. La dame qui dort pour la nuit est là.[paragraph break]'Bonsoir ! Le receptionniste m'a prévenu de votre venue. Je suis Hélène Lee, je dirige la centrale qui devait alimenter Tokyo.'". 

Chambre is east of Keio Plaza Etage 1.

commode is a supporter in Chambre.
Grosse cle is an object. Grosse cle is in dust_bin.

Helene is a man in Chambre.
Understand "Hélène Lee/Lee" as Helene.

After asking Helene about "courant/coupure":
	say "'Bonsoir ! Voiçi Gumi, et moi je sui Mikuna. Vous êtes donc la directrice de la centrale ??'";
	wait for space key;
	say "[line break]'C'est bien cela.'";
	wait for space key;
	say "[line break]'Alors vous savez ce qui se passe ?', s'ecrie Gumi.";
	wait for space key;
	say "[line break]'Oui....et je vais tout vous expliquer.'" ;
	wait for space key;
	say "[line break]Gumi et moi l'écoutons attentivement. Nous pendions à ses lèvres, tels des gosses qui bavent devant un bonbon" ;
	wait for space key;
	say "[line break]'Les écolos ont pirater le système informatique de la centrale et couper le courant. Sauf que ce n'est pas juste pour couper le courant. Il ont l'intention de faire sautez la centrale'." ;
	wait for space key;
	say "[line break]'...Mais pourquoi ?'.";
	wait for space key;
	say "[line break]'Pour faire portez le fardeau au gouvernement. Il veulent se servir de ça pour montrer que les centrales ne sont pas sûrs, alors qu'il seront eux-même responsables des désastres à venir'.";
	wait for space key;
	say "[line break]'Et pourquoi n'avez vous pas reglé le problème par vous même ? lui demandé-je'.";
	wait for space key;
	say "[line break]'Je n'étais pas à la centrale au moment où c'est arrivé. Et puis je n'ai pas de moto ou de scooter pour déplacer dans ces embouteillages. En revanche, je suis la seul à pouvoir régler le problème. Je detient là une clé qui permet de désactiver le système et de le réinitialiser. Tenez, je vous la donne'.";
	now Grosse cle is on commode;

After taking Grosse cle :
	say "'Ne perdez pas de temps ! Allez à la centrale !'ordonne-t-elle.";
	wait for space key;
	say "[line break]'Oui', lui reponds-je";
	wait for space key;
	say "[paragraph break]Nous descendons toutes les deux au rez-de-chaussée puis sortons de l'hotel. Gumi mets son casque, j'en fais de même, puis nous partons pour la centrale. Une longue route nous attends ....";
	wait for space key;
	now Gumi is in Cour;
	now the player is in Cour;
	
	

After asking receptionniste about "bonsoir" :
	say "[line break]'Bonsoir jeunes demoiselles, désirez-vous une chambre pour la nuit, en ce moment on on accepte que des espèces, l'absence de courant nous empeche de faire les transactions bancaires.'";
	wait for space key;
	say "[line break]'Bonsoir...heu non merci nous ne sommes pas là pour y passer la nuit. Nous enquetons sur la coupure de courant' lui répond Gumi.";
	wait for space key;
	say "[line break]'Hum je comprends. Malheureusement je n'ai pas d'information. personne n'a l'air d'être au courant.'";
	wait for space key;
	say "[line break]'Y a-til des gens qui sont venus récemment ?'lui demandé-je.";
	wait for space key;
	say "[line break]'Heu...oui une femme plutôt agée...la quarantaine...elle était très préocuppée par la coupure de courant...Si vous voulez je peux vous indiquer le chemin.'";
	wait for space key;
	now rec is 1;
	
	
After asking receptionniste about "femme/dame" :
	if rec is 1 :
		say "[line break]'Oui ce serait bien merci'";
		wait for space key;
		say "[line break]'Elle est au premier étage. Et prenez les escaliers, le groupe électrongène est en panne'";
		
		
Before going to Keio Plaza Rez-de-chaussée :
	if bool is 1:
		now Gumi is in Keio Plaza Rez-de-chaussée;
		say "Espérons que ce que cela en vaut la peine...[line break]";
	otherwise :
		say "Je ferais mieux d'aller voir les ecolos";
		stop the action;
		



[---------------------------------------------------------------Shinjuku (FIN)------------------------------------------------------------------]

[------------------------------------------------------------------Centrale---------------------------------------------------------------------]

Radio is a scene. Radio begins when the player is in Salle de décontamination.
Radio ends when the time since Radio began is 4 minutes.

Virus is a scene. Virus begins when the player is in Salle des opérations.
Virus ends when the time since Virus began is 4 minutes.

Centrale is a region in Tokyo.

Cour de la centrale is a room in Centrale."La route a été longue mais nous y sommes...La centrale...est très vetuste, enfin du moins...à l'extérieur. Vous me direz que c'est une centrale, mais bon...[paragraph break]'Je fais le gai Miku, au cas où des gens viennent', me prévient Gumi.".

Accueil is a dark room in Centrale."La salle d'accueil est si vide...il y a de la paperasse sur le bureau. On dirait que les salariés de la centrale ont fui...Le couloir me fait face...".

Couloir is a dark room in Centrale."Rien de spécial, à part la présence de tuyaux. En continuant, je me retrouverai dans la salle de décontamination, à gauche, une porte ouverte indique 'Vestiaires'".

Salle de décontamination is a dark room in Centrale."Cette salle fait le lien entre la zone sécurisée et les zones radioactives indiquées par la porte. Il serait préferable d'être équipé d'une tenue de protection".

Vestiaire is a dark room in Centrale."Les casiers sont pleines de vêtement, je devrais peut-être prendre une tenue".

Chambre à combustion is a room in Centrale."De grandes piscines remplies d'eau occupent la chambre, à part ça...c'est vide. Des secaliers mènent vers une autre salle en haut".
Chambre à combustion is north of Salle de décontamination.

Salle des opérations is a room."Ce doit être içi que se trouve le système informatique,. Il y a des écrans et un clavier[line break]'BIP'[line break]'BIP'[line break]Un signal d'alarme...je doit examiner la machine".

portail is a door.
portail is north of Cour de la centrale.
portail is locked and openable.
The matching key of portail is Grosse cle.

Accueil is north of portail.
Couloir is north of Accueil.
Vestiaire is west of Couloir.
Salle de décontamination is north of Couloir.
Salle des opérations is up of Salle de décontamination

Tenue de protection is an object.
Tenue de protection is in Vestiaire.

Machine is a man in Salle des opérations.


Instead of examining Machine :
	say "La machine est infecté par un virus, il faut à tout pris le réiinitialiser. Je me connecte à la machine depuis un pc portable trouvé dans la salle....La machine me demande un mot de passe pour le réinitialiser. Je n'ai qu'un seul choix...une erreur et c'est fini...";

Instead of asking Machine about "Turing":
	say "La machine amorce sa procédure de réinitialisation...le virus est éradiqué...";
	wait for space key;
	say "Je recois un appel,  c'est Gumi : 'Miku, ca marche, le ville est à nouveau alimentée !!!'";
	wait for space key;
	End the Story saying "Merci d'avoir lu ce récit  ";


when Virus ends :
	say "La centrale vibre...je n'ai pas réussi...";
	wait for space key;
	End the story saying "C'est l'histoire d'une femme qui a fait exploser la centrale nucléaire";

After going to Salle de décontamination :
	if the player carries Tenue de protection:
		say "...J'ai bien fait mettre me tenue";
	otherwise :
		say "...Je...Je me sens si faible...";

When Radio ends :
	if the player carries Tenue de protection:
		say "Ces ondes sont vraiment dangereuses";
	otherwise:
		say "......Je me sens...si mal.....";
		End the story saying "C'était l'histoire d'une femme qui était négligente";

Instead of examining Grosse cle :
	say "Sur la cle est inscrit 'Turing'.".

test central with "ouvrir portail avec cle/n/n/w/prendre tout/e/n/up/x Machine/questionner Machine sur Turing".
[---------------------------------------------------------------Centrale (FIN)------------------------------------------------------------------]




[***********************************************************************************************************
					En marge (une salle poublle)
 ***********************************************************************************************************]

[La room poubelle]

	dust_bin is a dark room.
	


[-------------Les variables-------------]

out is a number variable.
out is 0.

rec is a number variable.
rec is 0.

[Regarder]
watch is a number variable.
watch is 1.

tv_var is a number variable.
tv_var is 0.

pc_var is a number variable.
pc_var is 0.

info is a number variable.
info is 1;

var_smart is a number variable.
var_smart is 0;


var_smart1 is a number variable.
var_smart1 is 0.

var_smart2 is a number variable.
var_smart2 is 0.

var_smart3 is a number variable.
var_smart3 is 0.

bool is a number variable.
bool is 2.

next_ is a number variable.
next_ is 0.

[---------Les variables (FIN)-----------]


[------------------Les Test------------------]

test part1 with "test dial1/bas/bas/bas/bas/bas/bas/bas/e".

	
test tv with "regarder/regarder/w/regarder/x tv/x tv/regarder/up/prendre lampe torche/down";
test pc with "regarder/regarder/w/regarder/x pc/x pc/up/prendre lampe torche/down";


test dial1 with "test pc/prendre smart/ x smart/e/e".
test dial2 with "test tv/prendre smart/ x smart/e/e".


test shut with "test part1/ouvrir porte avec badge/ouvrir porte/e".


test req with "test shut/e/x Gumi/questionner Gumi sur courant/x smart/questionner Gumi sur 3G".

[Test branche 1]
test shin with "test req/regarder/questionner Gumi sur quartier/e/regarder/questionner manifestante ecolo sur leader/questionner Gumi sur la fille/questionner Gumi sur la fille/questionner manifestante ecolo sur leader";

test lumi with "test shin/e/e/e/bas/x laptop/haut/x smart/haut/questionner Gumi sur Beauvais/test recep/test ch/test central".
[FIN Test branche 1]


[Test branche 2]
test keio with "test shin/w/w/test recep/test ch/test central".
[FIN Test branche 2]

test ch with "haut /e/questionner Helene sur courant/prendre cle";
test recep with "questionner receptionniste sur bonsoir/questionner receptionniste sur femme".

[---------------Les Tests (FIN)---------------]
	
	
	
	
	
[***********************************************************************************************************
				En marge (Le smartphone)
 ***********************************************************************************************************]
	
Instead of examining smartphone :
	if var_smart is 1:
		now out is 1;
		say "C'est Gumi, ma meilleure amie, qui m'appelle, je décroche.";
		wait for space key;
		say "[paragraph break]'Allo'"; 
		wait for space key;
		say "[line break]'Miku !! Tu es toujours debout, c'est cool. Tu as des problèmes de courant chez toi  ?'";
		wait for space key;
		say "'Heu oui, pourquoi ? Toi aussi ?'";
		wait for space key;
		say "'Oui, et je ne sais pas pourquoi. Apparement, toute la ville est privée d'électricité. Je te rejoinds en bas de l'immeuble. Je serais au square' ";
		wait for space key;
		say "[line break]'Heu...d'accord'";
		wait for space key;
		say "[paragraph break]Il n'y a plus rien à faire içi, mieux vaut sortir[line break]";
		now var_smart is 0;
	if var_smart1 is 1:
		say "J'appele Gumi pour m'assuser que nos deux telephone fonctionnent. Le telephone sonne, je peut donc l'appeler.";
		wait for space key;
		say "[line break]'J'ai du reseau Miku !! Je vais essayer d'appeler quelqu'un d'autre'. Rien...personne au bout du fil.[line break]";
		wait for space key;
		say "[line break]'Pourquoi mon tel il peut te recevoir et pas les autres ??'";
		wait for space key;
		say "[line break]'Aucune idée'";
		wait for space key;
		say "[line break]Effectivement, nos deux telephones peuvent communiquer entre eux , quand bien même il n'y a plus de réseau téléphonique, et pourtant....je peux aller sur le net. Gumi a l'air totalement perdu à ce niveau là. Peut-être devrais-je lui en parler[line break]";
		wait for space key;
		now var_smart1 is 2;
	if next_ is 2 :
		say "... [line break]";
		wait for space key;
		say "...";
		wait for space key;
		say "...";
		wait for space key;
		say "'.. Aller...'";
		wait for space key;
		say "'...Decroche...'";
		wait for space key;
		say "'Oui Miku ?'";
		wait for space key;
		say "'Gumi !! Faut que tu vienne au Lumine. Je sais qui a fait ça. Sauf que làlà je suis enfermée dans le sous-sol, viens me librerer !!Et cherche pas à comprendre comment je me suis retrouver dans cette situation'";
		wait for space key;
		say "'Heu ok ok' [line break]";
		now next_ is 3;
		now var_smart2 is 1;
	
	
	
	
	
	
	
	
	
	
	
	
	
