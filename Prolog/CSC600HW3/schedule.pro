teaches(souza, 210).
teaches(wong, 220).
teaches(sosnick, 256).
teaches(potter, 340).
teaches(yoon, 413).
teaches(dujmovic, 600).
teaches(sosnick, 413).
teaches(sosnick, 648).

freshman(210).
freshman(220).
sophomore(256).
sophomore(340).
junior(413).
senior(600).
senior(648).

morning(210).
morning(220).
morning(340).
morning(600).
morning(413).

afternoon(256).
afternoon(413).
afternoon(600).
afternoon(648).

tth(413).
tth(648).

mwf(210).
mwf(220).
mwf(256).
mwf(340).
mwf(600).

teaches_freshman(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	freshman(CLASS).
teaches_sophomore(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	sophomore(CLASS).
teaches_junior(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	junior(CLASS).
teaches_senior(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	senior(CLASS).
teaches_morning(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	morning(CLASS).
teaches_afternoon(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	afternoon(CLASS).
teaches_whole_day(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	morning(CLASS),
	afternoon(CLASS).
works_mwf(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	mwf(CLASS).
works_tth(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	tth(CLASS).
teaches_three_classes(INSTRUCTOR) :-
	teaches(INSTRUCTOR, CLASS),
	teaches(INSTRUCTOR, CLASS1),
	teaches(INSTRUCTOR, CLASS2),
	CLASS \= CLASS1,
	CLASS \= CLASS2,
	CLASS1 \= CLASS2.





