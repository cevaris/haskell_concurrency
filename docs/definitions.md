#Haskell

####Weak Head Normal Form:

- The **seq** function evaluates its argument only as far as the first constructor, and doesn’t evaluate any more of the structure.

####Sparks:

- The argument passed into an **rpar** function to be executed in parallel. 

####Work Stealing:

- Work that is taken off the queue of **sparks** when there is an free CPU processors available to execute it.

####Static/Dynamic Partitioning:
- Static partitioning is breaking down the problem into a fixed number of chunks. Dynamic is allows the partitioning size to be calculated at runtime whenever a free CPU core processor frees up.

####NFData
- Short for **Normal Form data**. Normal form is a state or value which data has been fully evaluated. Similar to **rnf** or Reduced Normal Form.
 
#####Evaluation Strategies
- Simply, a Strategy is the separation of algorithm code from parallelization code. The input of a Strategy is a data structure, and traverses the structure creating Sparks via rpar/rseq. 