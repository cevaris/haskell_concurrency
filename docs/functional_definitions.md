#Functional Definitions


####Parametric Polymophism

- A type that depends on other types.
- TBA


####Infix Notation

- `let x = 3 + 5` 
- Where the operator seprates the binary (left,right) arguments.
- This is the most used, standard notation you would see in most programming languages.


####Prefix Notation

- Where the operator is enclosed in parentheses and preprends the two binary arguments.

```
Prelude> (+) 3 5
8
Prelude> (++) [3, 4] [5]
[3,4,5]
Prelude> (+) 3 ((-) 5 2)
6
```


####Homogeneous

- A type that can only handle a single type at once. 
- For example, you cannot mix Interger with Char types in a List, so a list is homogeneous.


