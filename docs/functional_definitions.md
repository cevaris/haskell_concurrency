#Functional Definitions


####Parametric Polymophism

- A type that depends on other types.
- TBA

####Homogeneous

- A type that can only handle a single type at once. 
- For example, you cannot mix Interger with Char types in a List, so a list is homogeneous.

#### Type Inference

- The process of a compiler algorithmically guessing which type an expression is.

    ```
    Prelude> let x = (1, 3, "Three")
    Prelude> :t x
    x :: (Integer, Integer, [Char])

    ```
#### Abstract Algebraic Types (ADTs)
- A name for a data type
- A data type that contains constructors, that are used to create and hold new values.

#### Higher Order Function
- Functions that take other functions as parameters; example `map`. 