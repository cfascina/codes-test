program run_test
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    use allocation_test
    use constants
    implicit none

    type :: carbon_leaf
        real(REAL64) :: L_new
        real(REAL64) :: delta_leaf

    end type carbon_leaf


    real(REAL64) :: delta_leaf
    real(REAL64) :: delta_root
    real(REAL64) :: delta_sapwood
    real(REAL64) :: cleaf
    integer :: i
    real(REAL64) :: L_new
    

    ! call show_consts()
    
    call leaf_carbon(delta_leaf)
    print*, 'CARBON ON LEAF =', delta_leaf

    call root_carbon(delta_leaf, delta_root)
    print*, 'CARBON ON ROOT =', delta_root
    
    call sapwood_carbon(delta_leaf, delta_root, delta_sapwood)
    print*, 'CARBON ON SAPWOOD =', delta_sapwood


    !DO COM O TYPE
    ! do i = 1, 12
    !     carbon_leaf(i)%L_new = delta_leaf + L

    ! end do

    do i = 1, 12
        L_new(i) = delta_leaf(i) + L(i)

        print*, 'NEW CARBON ON LEAF =', L_new(i)
    end do

end program run_test