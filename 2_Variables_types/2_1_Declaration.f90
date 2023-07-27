program variables
    
    ! The line below tells the compiler that the variables will be explicitly declared
    implicit none
  
    ! Before using any variable, it must be declared with a type
    ! <variable_type> :: <variable_name>
    ! Recall Fortran is case insentivive language  
    integer :: amount
    complex :: frequency
    character :: initial
    logical :: isOkay

    ! Declared values to compute cylinder volume
    real :: pi
    real :: radius
    real :: height
    real :: volume

    ! Bad initialization example:
    ! interger :: amount = 10 ! The variable will retain its value between procedure calls 

    ! Assigning values to variables
    amount = 10
    frequency = (1.0, -0.5)
    initial = 'A'  ! This can also be double quoted
    isOkay = .false.

    ! Assigning values to variables
    pi = 3.14159
    print *, 'Enter radius and height of cylinder in format <radius, height>: '
    read *, radius, height
    volume = pi * radius**2 * height
    print *, 'The volume of the cylinder is: ', volume

    ! Printing other standard output
    print *, 'The value of amount (integer) is: ', amount
    print *, 'The value of frequency (complex) is: ', frequency
    print *, 'The value of initial (character) is: ', initial
    print *, 'The value of isOkay (logical) is: ', isOkay

end program variables






