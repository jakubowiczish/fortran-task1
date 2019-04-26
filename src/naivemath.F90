module naivemath

    public :: naivmull
    private naivmull_kind4, naivmull_kind8
    interface naivmull
        procedure naivmull_kind4, naivmull_kind8
    end interface
    
    contains

    function naivmull_kind4(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), dimension(size(A,1), size(B, 2)) :: C
        integer (kind = 8) :: i, j, k
        
        C = 0

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


    function naivmull_kind8(A, B) result(C)
        implicit none
        real (kind = 8), intent(in), dimension(:, :) :: A, B
        real (kind = 8), dimension(size(A,1), size(B, 2)) :: C
        integer (kind = 8) :: i, j, k
        
        C = 0

        do i = 1, size(A, 1)
            do j = 1, size(B, 2)
                do k = 1, size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do
    end function


end module