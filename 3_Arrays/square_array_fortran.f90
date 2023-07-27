subroutine square_array_f90(arr, arr_sq)
    
    implicit none
    real(kind=8), intent(in) :: arr(5)
    real(kind=8), intent(out) :: arr_sq(5)
    integer :: i

    do i = 1, 5
        arr_sq(i) = arr(i) ** 2
    end do

    return

end subroutine square_array_f90