check_length([], 0). % Case for if list is empty
check_length([_|TAIL], A):-check_length(TAIL,A1), A is A1 + 1. %Check length if not empty
compare_length(X, Y):- X > Y. %Compare our numeric list lengths