program run_test
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    !use allocation_test
    use allometry
    !use constants
    implicit none

    real(REAL64) :: diam
    real(REAL64) :: CA
    real(REAL64) :: hgt
    real(REAL64) :: LAI

    print*, 'DIAMETER =', diam
    print*, 'CROWN AREA =', CA
    print*, 'HEIGHT =', hgt
    print*, 'LAI =', LAI

end program run_test