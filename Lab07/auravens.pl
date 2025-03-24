mascot(ravens). /* reads as the mascot is ravens */
questionable(foodInMPAtEndOfSemester).
graduatedIn(matthew, 2011).
knows(chuck, cpsc).
knows(jon, lego).
studentOf(matthew, cpsc).
studentOf(jon, cpsc).

professorOf(Prof, Subject) :-
	knows(Prof, Subject),
	studentOf(Prof, Subject).