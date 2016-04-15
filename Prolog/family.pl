m([peter, marvin, mike, jason, dylan, lou, ernest]).
f([sylvia, maria, sydney, holly, melissa, star, lydia, ilya]).
family([peter, sylvia, [marvin, mike, maria]]).
family([marvin, sydney, [melissa]]).
family([jason, melissa, [lou]]).
family([mike, holly, [dylan]]).
family([dylan, star, [lydia]]).
family([brian, star, [ilya, ernest]]).

male(X) :- m(LIST), member(X, LIST).
female(X) :- f(LIST), member(X, LIST).
father(FATHER, CHILD) :-
	family([FATHER, _|[CHILDREN]]),
	member(CHILD, CHILDREN).
mother(MOTHER, CHILD) :-
	family([_, MOTHER|[CHILDREN]]),
	member(CHILD, CHILDREN).
parent(PARENT, CHILD) :-
	father(PARENT, CHILD);
	mother(PARENT, CHILD).
siblings1(NAME1, NAME2) :-
	family([DAD1, MOM| [CHILDREN1]]),
	family([DAD2, MOM| [CHILDREN2]]),
	member(NAME1, CHILDREN1),
	member(NAME2, CHILDREN2),
	DAD1 \= DAD2, NAME1 \= NAME2.
siblings1(NAME1, NAME2) :-
	family([DAD, MOM1| [CHILDREN1]]),
	family([DAD, MOM2| [CHILDREN2]]),
	member(NAME1, CHILDREN1),
	member(NAME2, CHILDREN2),
	MOM1 \= MOM2, NAME1 \= NAME2.
brother1(NAME1, NAME2) :-
	siblings1(NAME1, NAME2),
	male(NAME1).
sister1(NAME1, NAME2) :-
	siblings1(NAME1, NAME2),
	female(NAME1).
siblings2(NAME1, NAME2) :-
	family([_, _| [CHILDREN]]),
	member(NAME1, CHILDREN),
	member(NAME2, CHILDREN),
	NAME1 \= NAME2.
brother2(NAME1, NAME2) :-
	siblings2(NAME1, NAME2),
	male(NAME1).
sister2(NAME1, NAME2) :-
	siblings2(NAME1, NAME2),
	female(NAME1).
cousins(NAME1, NAME2) :-
	parent(PARENT, NAME1),
	siblings2(PARENT, PARENT2),
	parent(PARENT2, NAME2).
uncle(UNCLE, CHILDNAME) :-
	parent(PARENT, CHILDNAME),
	brother2(UNCLE, PARENT).
aunt(AUNT, CHILDNAME) :-
	parent(PARENT, CHILDNAME),
	sister2(AUNT, PARENT).
grandparent(GRANDPARENT, GRANDCHILD) :-
	parent(GRANDPARENT, PARENT),
	parent(PARENT, GRANDCHILD).
grandmother(GRANDMOTHER, GRANDCHILD) :-
	grandparent(GRANDMOTHER, GRANDCHILD),
	female(GRANDMOTHER).
grandfather(GRANDFATHER, GRANDCHILD) :-
	grandparent(GRANDFATHER, GRANDCHILD),
	male(GRANDFATHER).
grandchild(GRANDCHILD, GRANDPARENT) :-
	parent(GRANDPARENT, PARENT),
	parent(PARENT, GRANDCHILD).
grandson(GRANDCHILD, GRANDPARENT) :-
	grandchild(GRANDCHILD, GRANDPARENT),
	male(GRANDCHILD).
granddaughter(GRANDCHILD, GRANDPARENT) :-
	grandchild(GRANDCHILD, GRANDPARENT),
	female(GRANDCHILD).
greatgrandparent(GREATGRANDPARENT, GRANDCHILD) :-
	parent(GREATGRANDPARENT, GRANDPARENT),
	parent(GRANDPARENT, PARENT),
	parent(PARENT, GRANDCHILD).
ancestor(ANCESTOR, CHILDNAME) :-
	parent(ANCESTOR, CHILDNAME).
ancestor(ANCESTOR, CHILDNAME) :-
	parent(ANCESTOR, PARENT),
	ancestor(PARENT, CHILDNAME).