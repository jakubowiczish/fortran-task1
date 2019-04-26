module naivemath

    public :: naivmull
    private naivmullKind4, naivmullKind8, naivmullKind16
    interface naivmull
        procedure naivmullKind4, naivmullKind8, naivmullKind16
    end interface

    contains

    function naivmullKind4(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "NAIVMULL KIND 4"

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


    function naivmullKind8(A, B) result(C)
        implicit none
        real (kind = 8), intent(in), dimension(:, :) :: A, B
        real (kind = 8), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "NAIVMULL KIND 8"

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


    function naivmullKind16(A, B) result(C)
        implicit none
        real (kind = 16), intent(in), dimension(:, :) :: A, B
        real (kind = 16), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "NAIVMULL KIND 16"

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function

end module