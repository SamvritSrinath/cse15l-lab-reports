# Lab Report 3 - Researching Commands
### **Samvrit Srinath A17436822**
## Grep Commands and Options
This lab report will mainly be considering the usages of *Grep* in terminal as well as any associated options with terminal. Examples were gotten from using the command `man grep` to see which options yield which results. 

### 1. **-r**
The `-r` option in grep is used to search for patterns in files recursively. This means that the command will search for the pattern in all the files in the directory and its subdirectories. This could be useful when searching for a pattern in a directory that has many subdirectories as it would be tedious to search for the pattern in each subdirectory.

Example 1:
Similar to the skill demo, suppose you wanted to find the occurances of the word *Lucayans* in the `written_2` directory. You could use 

	grep -r "Lucayans" written_2

This outputs:

	skill-demo1-data/written_2/travel_guides/berlitz2/Bahamas-History.txt:Centuries before the arrival of Columbus, a peaceful Amerindian people who called themselves the Luccucairi had settled in the Bahamas. Originally from South America, they had traveled up through the Caribbean islands, surviving by cultivating modest crops ...
	skill-demo1-data/written_2/travel_guides/berlitz2/Bahamas-History.txt:The Spaniards never bothered to settle in the Bahamas, but the number of shipwrecks attest that their galleons frequently passed through the archipelago en route to and from the Caribbean, Florida, Bermuda, and their home ports. On Eleuthera the explorers dug a fresh-water well — at a spot now known as “Spanish Wells” ...

Example 2:

Suppose you wanted to find references or the occurances to the surname *Chavez* in the `written_2` directory. You could use the command `grep -r "Chavez" written_2` to find all the occurances of the surname *Chavez* in the `written_2` directory. 

	grep -r "Chavez" written_2

This outputs: 

	skill-demo1-data/written_2/non-fiction/OUP/Castro/chP.txt:References Campa 1977; Galvan 1985; Hernández-Chavez, Cohen, and Beltramo 1975; Peña 1985b; Vasquez 1975
	skill-demo1-data/written_2/non-fiction/OUP/Castro/chQ.txt:References Chavéz 1983; Davalos 1996; Erevia 1980; Horowitz 1993; Martinez-Chavez 1989; Ortiz 1992; Salcedo 1997; Siporin 1984; Vigil 1998
	skill-demo1-data/written_2/non-fiction/OUP/Castro/chA.txt:References Anaya and Lomelí 1989; Barrera 1988; Bierhorst 1990; Chavez 1984; Leal 1995; Valdez and Steiner 1972
	skill-demo1-data/written_2/travel_guides/berlitz1/WhatToLosAngeles.txt: at Dodger Stadium, just north of Downtown in Chavez Ravine. In Anaheim

As such, `grep -r` proves useful when searching for patterns in a directory that has many subdirectories, without knowing which subdirectory or the folder structure of the directory. This could be useful when searching for a key specific term or file reference in a root or home directory, or for filtering out references or key terms in a huge study guide. The benefit of being able to search recursively is that you don't need to specify specific files to apply grep on, but rather an entire directory and its subdirectories. 

Sources: https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/

### 2. **-L**
The `-L` option in grep is used to print out files that do not have the specified pattern. This could be useful when searching for files that have not been searched yet. 
Suppose you have a list of queries and you need to find out which files have not been searched yet. You could use the command `grep -L "query" *` to find out which files have not been searched yet.

Example 1: 
Suppose you wanted to find all the files that did not have the word *Ocean* within its file text, as maybe you're looking for locations in `travel_guides/` that don't have attractions of the ocean. In that case: 

	grep -rL "Ocean" written_2/travel_guides/berlitz1

What this outputs is:

	written_2/travel_guides/berlitz1/HandRLasVegas.txt
	written_2/travel_guides/berlitz1/HistoryJapan.txt
	written_2/travel_guides/berlitz1/IntroMalaysia.txt
	written_2/travel_guides/berlitz1/HandRIstanbul.txt
	written_2/travel_guides/berlitz1/HistoryJamaica.txt
	written_2/travel_guides/berlitz1/HandRJamaica.txt
	written_2/travel_guides/berlitz1/HandRHongKong.txt
	written_2/travel_guides/berlitz1/HistoryEgypt.txt
	written_2/travel_guides/berlitz1/IntroEdinburgh.txt
	written_2/travel_guides/berlitz1/HistoryIsrael.txt
	written_2/travel_guides/berlitz1/IntroDublin.txt
	written_2/travel_guides/berlitz1/HistoryIndia.txt
	written_2/travel_guides/berlitz1/IntroFrance.txt
	written_2/travel_guides/berlitz1/WhatToLakeDistrict.txt
	written_2/travel_guides/berlitz1/IntroIbiza.txt
	written_2/travel_guides/berlitz1/HistoryItaly.txt
	written_2/travel_guides/berlitz1/WhereToGreek.txt
	written_2/travel_guides/berlitz1/HistoryDublin.txt
	... //about 69 more files "used wc -l"

This means that there are 86 travel guides within `berlitz1` folder that do not specify or mention the ocean. This means that we can search for files that do not have the specified pattern in them: which could be useful for limiting searches, suppressing unwanted results, and finding files that have not been searched yet.

Example 2:

Suppose an individual does not want to see politically charged words or sensitive materials in their searches of `written_2`. They could use the command `grep -rL "violence" written_2` to find out which files do not have the word *violence* in them. Lets limit the search results to the `written_2/non-fiction/Fletcher` as that folder concerns sociopolitical issues over the last couple of centuries. 

	grep -rL "violence" written_2/non-fiction/OUP/Fletcher

This outputs:

	written_2/non-fiction/OUP/Fletcher/ch2.txt
	written_2/non-fiction/OUP/Fletcher/ch10.txt	

That means that these two chapters do not mention the word **violence** in their text: which means that these chapters are more likely to be suitable for giving to children or people who are sensitive to violence. Ultimately, this means that the `-L` option is useful for finding files that do not have the specified pattern in them. And in this case, this would be useful to filter out searches that have a specific *buzzword* or pattern that consumers or clients should not see. 

My source for this set of operations: https://man7.org/linux/man-pages/man1/grep.1.html and also using the `man grep` command.

### 3. -c

The `-c` option in grep is used to print out the number of lines that contain a pattern(not necessarily occurances but patterns). This might be useful in screenplay or other indexed type of writing where you'll have to analyze how many times a certain character or word apppears. 

Applying this to the `written-2` directory we can check for the number of times the word *Rousseauian* appears in the `written_2/non-fiction/OUP/Berk` directory. 

	grep -r -c "Rousseauian" written_2/non-fiction/OUP/Berk

The associated output: 

	written_2/non-fiction/OUP/Berk/ch2.txt:0
	written_2/non-fiction/OUP/Berk/ch1.txt:3
	written_2/non-fiction/OUP/Berk/CH4.txt:0
	written_2/non-fiction/OUP/Berk/ch7.txt:0

So looks like the word *Rousseauian* appears 3 times in the first chapter of the book authored by `Berk`. This means that the `-c` option is useful for finding keywords or topics in a certain chapter, and whether or not that keyword is a recurrent theme in the entirety of the book or textbook. In this example *Rousseauian* was a theme in the first chapter, but did not carry over to the rest of the book. As previously mentioned, the `-c` option is useful for finding topics, headers, or knowing which definitions to study for in a given chapter, as the more frequent a pattern appears, the greater weight it carries. 

We can also apply this to figure out which locations emphasize *hikes* or hiking the most by finding word counts. The more times a word appears in a file, it's possible that this correlation could indicate that the destination is well known for hiking. 

	grep -r -c "hike" written_2/travel_guides/berlitz1 > hike.txt
	grep -v "0" hike.txt

The associated output:

	written_2/travel_guides/berlitz1/WhatToLakeDistrict.txt:1
	written_2/travel_guides/berlitz1/WhereToGreek.txt:2
	written_2/travel_guides/berlitz1/WhereToLakeDistrict.txt:1
	written_2/travel_guides/berlitz1/IntroIsrael.txt:1
	written_2/travel_guides/berlitz1/WhereToIndia.txt:2
	written_2/travel_guides/berlitz1/IntroLosAngeles.txt:1
	written_2/travel_guides/berlitz1/WhereToItaly.txt:6
	written_2/travel_guides/berlitz1/WhatToMadeira.txt:1
	written_2/travel_guides/berlitz1/WhatToFWI.txt:1
	written_2/travel_guides/berlitz1/WhereToJapan.txt:5
	written_2/travel_guides/berlitz1/WhereToEgypt.txt:1
	written_2/travel_guides/berlitz1/WhatToIsrael.txt:1
	written_2/travel_guides/berlitz1/WhereToFrance.txt:9
	written_2/travel_guides/berlitz1/WhereToMallorca.txt:6
	written_2/travel_guides/berlitz1/WhatToMallorca.txt:1
	written_2/travel_guides/berlitz1/WhereToMadeira.txt:5
	written_2/travel_guides/berlitz1/WhatToGreek.txt:1
	written_2/travel_guides/berlitz1/WhereToIbiza.txt:2
	written_2/travel_guides/berlitz1/WhereToHawaii.txt:1
	written_2/travel_guides/berlitz1/HistoryLakeDistrict.txt:1
	written_2/travel_guides/berlitz1/WhereToJerusalem.txt:1
	written_2/travel_guides/berlitz1/WhatToJamaica.txt:1
	written_2/travel_guides/berlitz1/IntroMallorca.txt:1
	written_2/travel_guides/berlitz1/WhatToHongKong.txt:1
	written_2/travel_guides/berlitz1/WhereToHongKong.txt:3
	written_2/travel_guides/berlitz1/WhereToFWI.txt:2
	written_2/travel_guides/berlitz1/WhatToLasVegas.txt:1

This command gives a list of files that have the word *hike* within them as well as the counts for each one. The `grep -v "0"` command is used to filter out the files that do not have the word *hike* in them. This means that the files that have the word *hike* in them are the ones that are most likely to be associated with hiking, and are more well-known when for hiking. We are omitting the files that do not have the word *hike* in them because they are not relevant to the search. This could be useful to filter out or give a ranked search on which destinations are more attractive for hiking but still give a variety of options at the same time. 

Source: https://man7.org/linux/man-pages/man1/grep.1.html and also using the `man grep` command!

### 4. **-v**

The `-v` option is used in grep to search for lines that do not contain a certain pattern. Just as we used with `-L` earlier, `-v` is used to get everything besides the lines that contain the specified pattern.

For example, if we want to get the number lines that did not contain the word *Ocean* in them in the `berlitz1/WhereToIndia.txt` file, we could use the following command:

	grep -vc "Ocean" written_2/travel_guides/berlitz1/WheretoGreek.txt

What this would do is that it would search for the pattern *Ocean* in the file `WhereToIndia.txt` and return the number of lines that do not contain the pattern *Oceans*. The associated output is:

	2523

This means that 2523 lines did not have the pattern of *Oceans* but if we run 

	grep -c "Ocean" written_2/travel_guides/berlitz1/WheretoIndia.txt

The associated output is **4** lines which equals the total number of lines in the file. This might be important to use should we want to censor or prevent clients from seeing classified information from a given data file, so we can filter out the output by looking for all the lines or at least the number of lines that do not contain the pattern we are looking for.

Another Example could be using the `-v` is to filter out reviewed topics from a given file. Suppose you have a file that covers a bunch of topics, but you're already familiar with topics such as *Architecture*. You could output all the lines that are not concerned with that topic using: 

	grep -vi "Architecture" written_2/non-fiction/OUP/Rybczynski/ch1.txt

The associated output is:

	one
	dressing up


	Not only are function and form separate, over their long lives buildings can successfully accommodate a variety of uses. For example, some of the most famous museums (the Louvre, the Hermitage, the Belvedere) started life as royal palaces; the Uffizi in Florence is so named because it originally housed offices; and the Prado in Madrid was designed to be a museum of science, not art. The acclaimed Musée d’Orsay in Paris is housed in a railroad station. Two of my favorite small museums, the Frick Collection in New York City and the Phillips Collection in Washington, D.C., were built as residences. As historic preservation and adaptive reuse demonstrate, you can shop in a renovated warehouse, do office work in a converted loft, or live in a barn. Assuming, of course, that the warehouse, the loft, and the barn were well built. The material fabric of old buildings—the heavy beams, rough brick walls, and solid woodwork—is one of their chief pleasures. That is why we feel cheated by hollow walls, flimsy doors, and shaky balustrades. Buildings should last and feel as though they will.
	//...And the rest of the .txt file. 

The use case for this would be to review topics or chapters that are not concerned with the topic that you already reviewd, and what this command is doing is outputting all the lines present within this `ch1.txt` file that do not contain the pattern *Architecture*. This is useful because it allows you to filter out the topics that you already reviewed, and focus on the topics that you have not reviewed yet. This could be something that could be used for study guides, filtering out information or chapter review questions that have already been asked. 

Source: https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/