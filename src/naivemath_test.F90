program main
    use naivemath
implicit none

    real(kind = 4) :: array1(10, 10), array2(10, 10)
    array1 = 2
    array2 = 3

    write(*, *) naivmull(array1, array2)

end program main