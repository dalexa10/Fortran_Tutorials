program arrays 
    implicit none
    
    integer :: i
    integer :: size_arr5

    ! 1D array of integers
    integer, dimension(5) :: arr1

    ! Equivalent to 
    integer :: arr2(5)
    real :: arr3(5)

    ! 2D array of floats
    real, dimension(5, 5) :: arr4

    ! Dynamic arrays
    integer, allocatable :: arr5(:)

    
    ! Assign values to array
    arr1 = [(i, i=1, 5)]    ! For looping (similar to Python in some sense, although it starts from 1)
    arr2(:) = 1             ! Assign all elements to 1
    arr3(1:3) = 2           ! Assign elements 1 to 3 to 2
    arr4(:, 1) = [1, 2, 3, 4, 5]

    ! Allocate dynamic array
    print *, "Enter size of allocatable array"
    read *, size_arr5
    allocate(arr5(size_arr5))
    arr5 = [(i, i=1, size_arr5)]
    print *, "Allocated array of size ", size_arr5


    ! Looping over one array and store the results in another array (same but second column)
    do i = 1, size(arr4, 1)
        arr4(i, 2) = i**2
    end do

    ! Print array
    print *, arr1(1:5:2)  ! Print elements at odd indices
    print *, arr2
    print *, arr3
    print *, arr4(:, 2)   ! Print second column of arr4
    print *, arr5

    ! Deallocate dynamic array
    deallocate(arr5)
    
end program arrays