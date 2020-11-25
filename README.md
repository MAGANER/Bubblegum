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
After defn head there is list of arguments.
After arguments all commands that will be computed.
To return value from function, you can use
~~~
(return (something))
~~~
or
~~~
(var_name)
~~~

# List of all commands
printl
  arguments number: any
  goal: print arguments and move cursor to new line
print
  arguments number: any
  goal: print arguments
defvar
  arguments number: 2
  goal: create variable
defn
  arguments number: 2
  goal: create function
exit
  arguments number: 1
  goal: break application
import
  arguments number: 1
  goal: import and compute module
return
  arguments number: 1
  goal: return and (if can) compute arg
if
  arguments number: 2-3
  goal: do some action, if condition is true, else do, if there is else-option
loop
  arguments number: 2
  goal: repeat actions, while condition is true
break
  arguments number: 0
  goal: go out of cycle
continue
  arguments number: 0
  goal: return to to cycle begin
adde
  arguments number: 2
  goal: add value to list end
addb
  arguments number: 2
  goal: add value to list begin
size
  arguments number: 1
  goal: compute size of passed list
sizec:
  arguments number: 1
  goal: compute list, then compute size of resulting list
concat:
  arguments number: 2
  goal: concat 2 lists
set:
  arguments number: 3
  goal: set element to specific position in list
  
Also there are math operation, but there are obvious.



