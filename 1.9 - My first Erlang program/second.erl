-module(second).
-export([hypotenuse/2,perimeter/2,area/2]).


% If you need to find the length of the hypotenuse of a right triangle,
% you can use the Pythagorean theorem if you know the length of the other two sides.
% Square the length of the 2 sides, called a and b, then add them together.
% Take the square root of the result to get the hypotenuse
hypotenuse(A,B) ->
    
    math:sqrt(first:square(A) + first:square(B)).
    
perimeter(A,B) ->
    
    A + B + hypotenuse(A,B).

area(A,B) ->

    first:mult(A,B)/2.