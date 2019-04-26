program main
    use naivemath

    real (kind = 4), allocatable, dimension(:, :) :: A4, B4
    real (kind = 4), allocatable, dimension(:, :) :: C4

    real (kind = 8), allocatable, dimension(:, :) :: A8, B8
    real (kind = 8), allocatable, dimension(:, :) :: C8
    
    real (kind = 16), allocatable, dimension(:, :) :: A16, B16
    real (kind = 16), allocatable, dimension(:, :) :: C16

    integer (kind = 4) :: n
    
    real (kind = 4) :: randomNumber4
    real (kind = 8) :: randomNumber8
    real (kind = 16) :: randomNumber16

    ! ####################################################################
    !                              KIND 4 
    ! ####################################################################
    n = 10
    do while(n <= 1280)
        allocate(A4(n, n))
        allocate(B4(n, n))
        allocate(C4(n, n))

        call random_number(randomNumber4)

        A4 = randomNumber4
        B4 = randomNumber4
    
        C4 = 0
        C4 = naivmull(A4, B4)

        write(*,*) C4
    
        if(allocated(A4)) deallocate(A4)
        if(allocated(B4)) deallocate(B4)
        if(allocated(C4)) deallocate(C4)

        write(*,*) "size: "
        write(*,*) n

        n = n * 2
    end do

    ! ####################################################################
    !                              KIND 8 
    ! ####################################################################
    
    n = 10
    do while(n <= 1280)
        allocate(A8(n, n))
        allocate(B8(n, n))
        allocate(C8(n, n))

        call random_number(randomNumber8)
        A8 = randomNumber8
        B8 = randomNumber8
    
        C8 = 0
        C8 = naivmull(A8, B8)

        write(*,*) C8
    
        if(allocated(A8)) deallocate(A8)
        if(allocated(B8)) deallocate(B8)
        if(allocated(C8)) deallocate(C8)

        write(*,*) "size: "
        write(*,*) n

        n = n * 2
    end do


    ! ####################################################################
    !                              KIND 16 
    ! ####################################################################

    n = 10
    do while(n <= 1280)
        allocate(A16(n, n))
        allocate(B16(n, n))
        allocate(C16(n, n))

        call random_number(randomNumber16)
        A16 = randomNumber16
        B16 = randomNumber16
    
        C16 = 0
        C16 = naivmull(A16, B16)

        write(*,*) C16
    
        if(allocated(A16)) deallocate(A16)
        if(allocated(B16)) deallocate(B16)
        if(allocated(C16)) deallocate(C16)

        write(*,*) "size: "
        write(*,*) n

        n = n * 2
    end do
    

end program main