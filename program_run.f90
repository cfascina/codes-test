program run
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    !use constants
    !use allocation_test

    implicit none

    !real(REAL64) :: delta_leaf
    !real(REAL64) :: delta_root
    !real(REAL64) :: delta_sapwood
    real(REAL64) :: diam
    real(REAL64) :: D

    !call sapwood_carbon(delta_leaf, delta_root, delta_sapwood)
    D = diam()

    print*, 'OK'

end program run