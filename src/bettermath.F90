module bettermath

    public :: bettmull
    private bettmullKind4, bettmullKind8, bettmullKind16
    interface bettmull
        procedure bettmullKind4, bettmullKind8, bettmullKind16
    end interface

    contains

    function bettmullKind4(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "BETTERMULL KIND 4"

        do j = 1, size(B, 2)
            do k = 1, size(A, 2)
                do i = 1, size(A, 1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


    function bettmullKind8(A, B) result(C)
        implicit none
        real (kind = 8), intent(in), dimension(:, :) :: A, B
        real (kind = 8), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "BETTERMULL KIND 8"

        do j = 1, size(B, 2)
            do k = 1, size(A, 2)
                do i = 1, size(A, 1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


    function bettmullKind16(A, B) result(C)
        implicit none
        real (kind = 16), intent(in), dimension(:, :) :: A, B
        real (kind = 16), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        ! write(*,*) "BETTERMULL KIND 16"

        do j = 1, size(B, 2)
            do k = 1, size(A, 2)
                do i = 1, size(A, 1)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function

end module