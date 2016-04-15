m([peter, marvin, mike, jason, dylan, lou, ernest]).
f([sylvia, maria, sydney, holly, melissa, star, lydia, ilya]).
family([peter, sylvia, [marvin, mike, maria]]).
family([marvin, sydney, [melissa]]).
family([jason, melissa, [lou]]).
family([mike, holly, [dylan]]).
family([dylan, star, [lydia]]).
family([brian, star, [ilya, ernest]]).

male(X) :- m([X]).




