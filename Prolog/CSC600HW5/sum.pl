sum(LIST, SUM) :-
	max_list(LIST, MAX),
	min_list(LIST, MIN),
	SUM is MAX + MIN.