## Useful Haskell Execution Flags

Here are some useful flags passed into cabal/GHC generated Haskell binaries.

####-N, -N[x]:
- **x** is optional, declares number of cores to use in execution of parallel tasks; ex. -N2, -N4. 
- Just use **-N** to allocate use of all cores on the given machine.

###+RTS -s
- Prints post-execution summary metrics.
- Here are a few metrics provided.
  - Wall Clock (elapsed time)
  - Number of Cores used
  - Number of Sparks created
  - Garbage collection metrics

###+RTS -l
- Saves post-exection summary metrics to an **events** log file.
- Requires the **-eventlog** flag when compiling using cabal/GHC.

