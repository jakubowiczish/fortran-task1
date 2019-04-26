module naivemath

    public :: naivmull
    private naivmullKind4 !, naivmullKind8
    interface naivmull
        procedure naivmullKind4 !, naivmullKind8
    end interface

    contains

    function naivmullKind4(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), allocatable, dimension(:, :) :: C
        integer (kind = 8) :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))
        C = 0

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do

    end function


    ! function naivmullKind8(A, B) result(C)
    !     implicit none
    !     real (kind = 8), intent(in), dimension(:, :) :: A, B
    !     real (kind = 8), dimension(size(A,1), size(B, 2)) :: C
    !     integer (kind = 8) :: i, j, k
        
    !     C = 0

    !     do i = 1, size(A, 1)
    !         do j = 1, size(B, 2)
    !             do k = 1, size(A, 2)
    !                 C(i, j) = C(i, j) + A(i, k) * B(k, j)
    !             end do
    !         end do
    !     end do
    ! end function


end module