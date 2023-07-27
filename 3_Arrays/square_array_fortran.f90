subroutine square_array_f90(arr)
    
    implicit none
    real(kind=8), intent(inout) :: arr(5)
    integer :: i

    do i = 1, 5
        arr(i) = arr(i) ** 2
    end do

    return 

end subroutine square_array_f90