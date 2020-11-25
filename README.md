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
6. None

# Variable creation
~~~
(defvar var_name value)
~~~
You can't create "empty" variable,
but if you need it, you can init var with None.
After variable will be able to get any value of any type.
If variable has "real" type, it can take values of this type only.
Sure, value can be computable expression.

# Function creation
~~~
(defn (arg1 argn) (body))
~~~
