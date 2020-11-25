# Bubblegum
Lisp-like programming language intepretator 


# Some words about whole project
This programming language is pretty simple, but it has ability to grow strong.
It's not esoteric, but exprerimental, so there is no even std. Raw language.
It has strong type system, but you don't need to specify type of functions/variables,
because type is computed, when ones are created.


# Hello, world
(printl "hello,world")

Everything is pretty simple.
This function is like cout<<"hello,world"<<endl;

Also you can use print.
(print "hello," "world")

Output functions can take any number of arguments.
All lists are computed recursivly.
(printl (+ 2 (* 1 2 4 5 6) 5)))

# Types
1. Integer
2. Float
3. Bool
4. String
5. List

# Able operators
arithmetical: + - * / 
logical: and or xor not = > < >= <=

#Variable creation
(defvar var_name value)

#Function creation
(defn (arg1 argn) (body))

