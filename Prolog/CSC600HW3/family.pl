is_male(peter).
is_male(marvin).
is_male(mike).
is_male(jason).
is_male(dylan).
is_male(lou).
is_male(ernest).

is_female(sylvia).
is_female(sydney).
is_female(holly).
is_female(maria).
is_female(melissa).
is_female(star).
is_female(lydia).
is_female(ilya).

is_parent_of(peter, marvin).
is_parent_of(peter, mike).
is_parent_of(peter, maria).
is_parent_of(sylvia, marvin).
is_parent_of(sylvia, mike).
is_parent_of(sylvia, maria).
is_parent_of(marvin, melissa).
is_parent_of(sydney, melissa).
is_parent_of(melissa, lou).
is_parent_of(jason, lou).
is_parent_of(mike, dylan).
is_parent_of(holly, dylan).
is_parent_of(dylan, lydia).
is_parent_of(star, lydia).
is_parent_of(star, ilya).
is_parent_of(star, ernest).


mother(MOTHER, CHILD) :-
	is_female(MOTHER),
	is_parent_of(MOTHER, CHILD).
father(FATHER, CHILD) :-
	is_male(FATHER),
	is_parent_of(FATHER, CHILD).
sibling1(NAME1, NAME2) :-
	is_parent_of(PARENT, NAME1),
	is_parent_of(PARENT, NAME2),
	NAME1 \= NAME2.
brother1(NAME1, NAME2) :-
	sibling1(NAME1, NAME2),
	is_male(NAME1).
sister1(NAME1, NAME2) :-
	sibling1(NAME1, NAME2),
	is_female(NAME1).
sibling2(NAME1, NAME2) :-
	mother(MOTHER, NAME1),
	mother(MOTHER, NAME2),
	father(FATHER, NAME1),
	father(FATHER, NAME2),
	NAME1 \= NAME2.
brother2(NAME1, NAME2) :-
	sibling2(NAME1, NAME2),
	is_male(NAME1).
sister2(NAME1, NAME2) :-
	sibling2(NAME1, NAME2),
	is_female(NAME1).
cousin(NAME1, NAME2) :-
	is_parent_of(PARENT, NAME1),
	sibling2(PARENT, PARENT2),
	is_parent_of(PARENT2, NAME2).
uncle(UNCLE, CHILDNAME) :-
	is_parent_of(PARENT, CHILDNAME),
	brother2(UNCLE, PARENT).
aunt(AUNT, CHILDNAME) :-
	is_parent_of(PARENT, CHILDNAME),
	sister2(AUNT, PARENT).
grandparent(GRANDPARENT, GRANDCHILD) :-
	is_parent_of(GRANDPARENT, PARENT),
	is_parent_of(PARENT, GRANDCHILD).
grandmother(GRANDMOTHER, GRANDCHILD) :-
	grandparent(GRANDMOTHER, GRANDCHILD),
	is_female(GRANDMOTHER).
grandfather(GRANDFATHER, GRANDCHILD) :-
	grandparent(GRANDFATHER, GRANDCHILD),
	is_male(GRANDFATHER).
grandchild(GRANDCHILD, GRANDPARENT) :-
	is_parent_of(GRANDPARENT, PARENT),
	is_parent_of(PARENT, GRANDCHILD).
greatgrandparent(GREATGRANDPARENT, GRANDCHILD) :-
	is_parent_of(GREATGRANDPARENT, GRANDPARENT),
	is_parent_of(GRANDPARENT, PARENT),
	is_parent_of(PARENT, GRANDCHILD).
ancestor(ANCESTOR, CHILDNAME) :-
	is_parent_of(ANCESTOR, CHILDNAME).
ancestor(ANCESTOR, CHILDNAME) :-
	is_parent_of(ANCESTOR, PARENT),
	ancestor(PARENT, CHILDNAME).








