#Concurrency and Parallelization

#### When Parallelizing code, avoid breaking work into small, fixed number of partitions:

- Fixed chunks rarely contain the same amount of work, leading to imbalance of execution
- Limits speedup to the number of chunks given, since we are only dividing the work by N, and we can execute only N at a time.