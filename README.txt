Overview: Goldbach theorum of two numbers and shows that every even and positive number is the sum of two prime numbers.
          Length-Compare: Takes lists and checks to see if the first is larger than the second.
          
Website: (Editor and Compilers) https://swish.swi-prolog.org/

Quick Rundown of what the programs will do where:
Test Queries for Prolog files
%Tests cases which have to be put into console separately per program

Length-Compare:

%Since ListA>ListB is true the program will return lengths of ListA and ListB to the user.

check_length([a,b,c,d], ListA),
check_length([a,b,c], ListB),
compare_length(ListA, ListB).

%Below the test case will be false and will return false to the console

check_length([a,b], ListC),
check_length([a,b,c], ListD),
compare_length(ListC, ListD).

-------------------------------------------------------------------------------------------------------

Goldbach:
%Will return L = [3,97] to user since 100 is a positive even interger
%Goldbach Conjecture: That every Positive Even number greater than 2 is the sum of two prime numbers.

gb(100, L).
