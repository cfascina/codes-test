module allometry
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    !use constants
    !use allocation_test

    implicit none

    contains

    function diameter () result (diam)
        implicit none 
        real(REAL64) :: diam
        !real(REAL64) :: delta_sapwood

        diam = (4.0 + (2.0)) / ((1) * 3.14 * 40.0)) **(1.0 / (2.0 + 0.5))

    end function diameter

end module allometry