program main
    use naivemath
    use bettermath
    use dotmath

    real (kind = 4), allocatable, dimension(:, :) :: A4, B4
    real (kind = 4), allocatable, dimension(:, :) :: C4

    real (kind = 8), allocatable, dimension(:, :) :: A8, B8
    real (kind = 8), allocatable, dimension(:, :) :: C8
    
    real (kind = 16), allocatable, dimension(:, :) :: A16, B16
    real (kind = 16), allocatable, dimension(:, :) :: C16

    integer (kind = 4) :: n
    integer (kind = 4) :: MATRIX_SIZE = 1280
    
    real (kind = 4) :: randomNumber4
    real (kind = 8) :: randomNumber8
    real (kind = 16) :: randomNumber16


    real (kind = 16) :: startTime, finishTime, resultTime

    ! ####################################################################
    !                              NAIVE KIND 4 
    ! ####################################################################

    write(*,*)
    write(*,*) "TIME OF NAIVE MULTIPLICATION (KIND 4)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call random_number(randomNumber4)

        A4 = randomNumber4
        B4 = randomNumber4
    
        C4 = 0

        call cpu_time(startTime)
        C4 = naivmull(A4, B4)
        call cpu_time(finishTime)

        resultTime = finishTime - startTime
        
        ! Format: Fw.d
        ! w is the width of the variable and d is the number of decimal places to the right of the (implied) decimal point.

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime


        ! write(*,*) C4
    
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)

        

        n = n * 2
    end do


    ! ####################################################################
    !                              NAIVE KIND 8 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF NAIVE MULTIPLICATION (KIND 8)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call random_number(randomNumber8)
        A8 = randomNumber8
        B8 = randomNumber8
    
        C8 = 0

        call cpu_time(startTime)
        C8 = naivmull(A8, B8)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C8
    
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)

        n = n * 2
    end do


    ! ####################################################################
    !                              NAIVE KIND 16 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF NAIVE MULTIPLICATION (KIND 16)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call random_number(randomNumber16)
        A16 = randomNumber16
        B16 = randomNumber16
    
        C16 = 0

        call cpu_time(startTime)
        C16 = naivmull(A16, B16)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime
        
        ! write(*,*) C16
    
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)

        n = n * 2
    end do



    ! ####################################################################
    !                              BETTER KIND 4 
    ! ####################################################################

    write(*,*)
    write(*,*) "TIME OF BETTER MULTIPLICATION (KIND 4)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call random_number(randomNumber4)

        A4 = randomNumber4
        B4 = randomNumber4
    
        C4 = 0

        call cpu_time(startTime)
        C4 = bettmull(A4, B4)
        call cpu_time(finishTime)

        resultTime = finishTime - startTime
        
        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C4
    
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)

        n = n * 2
    end do



    ! ####################################################################
    !                              BETTER KIND 8 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF BETTER MULTIPLICATION (KIND 8)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call random_number(randomNumber8)
        A8 = randomNumber8
        B8 = randomNumber8
    
        C8 = 0

        call cpu_time(startTime)
        C8 = bettmull(A8, B8)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C8
    
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)

        n = n * 2
    end do
    

    ! ####################################################################
    !                              BETTER KIND 16 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF BETTER MULTIPLICATION (KIND 16)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call random_number(randomNumber16)
        A16 = randomNumber16
        B16 = randomNumber16
    
        C16 = 0

        call cpu_time(startTime)
        C16 = bettmull(A16, B16)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime
        
        ! write(*,*) C16
    
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)

        n = n * 2
    end do
    


    ! ####################################################################
    !                              DOTMATH KIND 4 
    ! ####################################################################

    write(*,*)
    write(*,*) "TIME OF DOT_PRODUCT MULTIPLICATION (KIND 4)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call random_number(randomNumber4)

        A4 = randomNumber4
        B4 = randomNumber4
    
        C4 = 0

        call cpu_time(startTime)
        C4 = dotmull(A4, B4)
        call cpu_time(finishTime)

        resultTime = finishTime - startTime
        
        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C4
    
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)

        n = n * 2
    end do
    


    ! ####################################################################
    !                              DOTMATH KIND 8 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF DOT_PRODUCT MULTIPLICATION (KIND 8)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call random_number(randomNumber8)
        A8 = randomNumber8
        B8 = randomNumber8
    
        C8 = 0

        call cpu_time(startTime)
        C8 = dotmull(A8, B8)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C8
    
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)

        n = n * 2
    end do



    ! ####################################################################
    !                              DOTMATH KIND 16 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF DOT_PRODUCT MULTIPLICATION (KIND 16)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call random_number(randomNumber16)
        A16 = randomNumber16
        B16 = randomNumber16
    
        C16 = 0

        call cpu_time(startTime)
        C16 = dotmull(A16, B16)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime
        
        ! write(*,*) C16
    
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)

        n = n * 2
    end do
    

    ! ####################################################################
    !                              MATMUL KIND 4 
    ! ####################################################################

    write(*,*)
    write(*,*) "TIME OF MATMUL MULTIPLICATION (KIND 4)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call random_number(randomNumber4)

        A4 = randomNumber4
        B4 = randomNumber4
    
        C4 = 0

        call cpu_time(startTime)
        C4 = matmul(A4, B4)
        call cpu_time(finishTime)

        resultTime = finishTime - startTime
        
        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C4
    
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)

        n = n * 2
    end do


     ! ####################################################################
    !                              MATMUL KIND 8 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF MATMUL MULTIPLICATION (KIND 8)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call random_number(randomNumber8)
        A8 = randomNumber8
        B8 = randomNumber8
    
        C8 = 0

        call cpu_time(startTime)
        C8 = matmul(A8, B8)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime

        ! write(*,*) C8
    
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)

        n = n * 2
    end do



    ! ####################################################################
    !                              MATMUL KIND 16 
    ! ####################################################################
    
    write(*,*)
    write(*,*) "TIME OF MATMUL MULTIPLICATION (KIND 16)"

    n = 10
    do while(n <= MATRIX_SIZE)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call random_number(randomNumber16)
        A16 = randomNumber16
        B16 = randomNumber16
    
        C16 = 0

        call cpu_time(startTime)
        C16 = matmul(A16, B16)
        call cpu_time(finishTime)
        
        resultTime = finishTime - startTime

        print '("SIZE: ", I0, f15.6," seconds.")', n, resultTime
        
        ! write(*,*) C16
    
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)

        n = n * 2
    end do

    

end program main