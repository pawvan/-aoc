{-
Defining a Type Class:
-}

class Show a where 
  show :: a -> String 


  {-
  
  In PureScript,
  a type 
  class is a
  powerful feature
  that 
  allows you 
  to define a 
  set of functions
  that can operate on 
  various types,
  providing a
  way to achieve
  polymorphism.
  This is similar 
  to type
  classes 
  in Haskell
  and serves as a 
  mechanism for
  ad-hoc 
  polymorphism
  
  -} 

{-
Definition: A type class defines a
set of 
functions that can be implemented 
for different types. When a 
type is made an instance of a
type class, it provides 
specific implementations
for the functions 
defined by that class.

-}

{-

Syntax: You define a
type class
using the class keyword, 
followed
by the name of the class 
and its functions.
-}
class Show a where
   show::a -> String 


{-

In this example,
Show
is a type 
class with a 
single function 
show that converts a value
of type a into a
String.
-}   

{-

Implementing a type class
for a custom type 
in PureScript involves
several key steps. 
Here’s a deep dive into 
the process, including an 
explanation of type classes,
how 
to define them, and
how to implement 
them for your custom types.
-}


{-
Understanding Type 
Classes
A type class in
PureScript
is similar
to interfaces in 
other languages. It allows
you to define a set of 
functions that can be 
implemented for
different types. 
This promotes code
reuse and 
abstraction.


For example, 
consider a type 
class for types that
can be serialized:

-} 
class Serialize a where 
    serilize :: a-> String 
    


{-

Instances: Once a type 
class is defined,
you can create instances
for specific types. 
This is done
using the instance 
keyword
.-}

instance showInt ::Show Int where

show x = show (toString x)

{-

Using Type Classes:
Once you have instances,
you can use the type class 
functions in a type-safe way
.-}

printShow forall a. Show a => a -> unit 

printShow x = log (show x )



printShow forall a. Show a => a-> unit 
printShow x = log (show x)
printShow forall a. Show a => a-> unit 
printShow x = log(show x)
instance showInt ::Show Int where
show x =show (toString x)
{-

In this example, 
printShow is a
polymorphic
function that can 
take 
any type a
that is an
instance 
of the Show
type class
.-}


{-

Benefits of Type 
Classes
Code Reusability: 
You can 
define generic 
algorithms 
that work
with any type 
that has 
a specific 
behavior.
Decoupling: 
Your code can 
depend 
on type class 
interfaces rather
than concrete 
implementations, 
leading to more modular
and maintainable code.
Extensibility: 
You can easily 
add new instances 
for new types
without 
modifying existing code
.-}

{-

Type Class 
Constraints
Type classes can also 
be used in 
function 
signatures 
to impose 
constraints 
on type
parameters
.-}
sum:: forall a. Numeric a=> Array a -> a

sum xs =foldl (+) 0 xs

{-
In this 
example,
Numeric is a type class
constraint ensuring 
that a supports 
numeric operations 
like addition
.-}

{-
Multi-Parameter Type
Classes
PureScript also 
supports 
multi-parameter
type classes, 
allowing 
more complex 
relationships
.-}

class Functor f where
   map::forall a b. (a->b) -> f a -> f b 
   
{-
This Functor 
class 
requires a 
type 
constructor 
f and
provides a 
map 
function 
that operates 
over
that type
.-}

{-
Type Class 
Hierarchies
Type classes can 
be related, 
allowing one
type class to 
extend another. 
This allows you to 
define more 
specific
behavior 
based on general 
behavior
.-}
class Show a where
   show :: a -> String 

class  Show a=> Eq a where 
eq::a-> a -> Boolean
{-

In this 
example,
Eq extends 
Show, 
meaning that any 
type
that is an 
instance 
of
Eq must also 
implement Show
.-}
