module naivemath
    contains

    function naivmull(A, B) result(C)
        implicit none
        real (kind = 4), intent(in), dimension(:, :) :: A, B
        real (kind = 4), allocatable, dimension(:, :) :: C
        integer :: i, j, k
        
        allocate(C(size(A, 1), size(B, 2)))

        do i = 1,size(A, 1)
            do j = 1,size(B, 2)
                do k = 1,size(A, 2)
                    C(i, j) = C(i, j) + A(i, k) * B(k, j)
                end do
            end do
        end do

        if(allocated(C)) deallocate(C)
    end function

end module