# Haskell Language

#### Infix Notation
 
- Where the operator seprates the binary (left,right) arguments.
- This is the most used, standard notation you would see in most programming languages.

    ```
    let x = 3 + 5
    ````


#### Prefix Notation

- Where the operator is enclosed in parentheses and preprends the two binary arguments.

    ```
    Prelude> (+) 3 5
    8
    Prelude> (++) [3, 4] [5]
    [3,4,5]
    Prelude> (+) 3 ((-) 5 2)
    6
    ```

#### Boolean conditions
- There are several keywords available to define a conditional statment

  - **&&, | | **
    
    ```
    Prelude> (True && True)
    True
    Prelude> False && (False || (True && True))
    False
    ```
  - **and,or** (prefix notation only), wierd because of the required square brackets.
   
    ```
    Prelude> and [True, True]
    True
    Prelude> and [False, or [False, and [True, False]]]
    False
    ```
  - **==,/=,<, <=, >, >=** (prefix notation only), wierd because of the required square brackets.
   
    ```
    Prelude> 3 /= 4
	True
    Prelude> 3 == 4
	False
	Prelude> (3 < 4) && (4 < 6)
	True
    ``` 
## Control Structures

##### If c then a else b
- Requires statements for each keyword **if**, **then**, and **else**.
- **a** and **b** options need to return the same time and be expressions/evaluable. 

    ```
    Prelude> let x = 4
    Prelude> if x < 5 then "Less than 5" else "Greater than 5"
    "Less than 5"
    ```