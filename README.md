# My solution for Fortran assignment - task 1

## Requirements
- ifort - Intel Fortran Compiler installed

## Run project
#### In order to run this project, type following commands in the main project directory:
```bash
cmake CMakeLists.txt
make all
./mull
```

# Conclusions

You can see below plots that are presenting the results of matrix multiplications -
the time it took for every matrix depending on its size (N)



### Kind = 4

![alt text](https://raw.githubusercontent.com/jakubowiczish/fortran-task1/master/res/wykres4.jpg)

- The advantage of matmul method - that is built in fortran - can be observed especially when kind = 4 and kind = 8. 
It's significantly faster, probably because of its optimalization and some tricks that are used in its implementation.

- The second fastest method is bettmull - 
it does much less operations than naivmull method and the difference is apparent.

- Dotmull method is slightly faster than naivmull, but the disparity is hardly noticeable for larger matrices.



### Kind = 8

![alt text](https://raw.githubusercontent.com/jakubowiczish/fortran-task1/master/res/wykres8.jpg)

This case is quite similar to the previous one.
- Matmul method is still the fastest method, betmull somewhat slower.
- Results for naivmull and dotmull methods are almost the same.



### Kind = 16

![alt text](https://raw.githubusercontent.com/jakubowiczish/fortran-task1/master/res/wykres16.jpg)

Major diffences can be noticed only when kind is equal to 16 and matrices are really large, 
although this plot does not present it in the most suitable way - I guess logarithmic scale would be better.

The operation of matrix multiplication itself can take significant of time.

There's a huge gap between all methods when the size of matrix is 1280 x 1280.

- It took almost 130 seconds for naive method to actually multiply matrices
- Dotmull method was the worst one - operation lasted over 200 seconds!
- Matmul method was best as usual - 78 seconds in comparison to over 200 is quite magnificent.
- Betmull method took second place, also as usual - 87 seconds is still pretty nice time.

#### I honestly believe that everything was done properly, although bear in mind the fact that the results may differ depending on what computer you run this project etc. 
