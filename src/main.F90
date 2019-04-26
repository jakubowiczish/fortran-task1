program main
    use naivemath

    real (kind = 4), allocatable, dimension(:, :) :: A, B
    real (kind = 4), allocatable, dimension(:, :) :: C

    integer (kind = 4) :: n
    ! real (kind = 4) :: k

    n = 10
    
    do while(n <= 1280)
        allocate(A(n, n))
        allocate(B(n, n))
        allocate(C(n, n))

        A = 0.9
        B = 0.9
    
        C = 0
        C = naivmull(A, B)

        write(*,*) C
    
        if(allocated(A)) deallocate(A)
        if(allocated(B)) deallocate(B)
        if(allocated(C)) deallocate(C)

        write(*,*) "size: "
        write(*,*) n

        n = n*2
    end do
    

end program main