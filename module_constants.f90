module constants
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    implicit none

    !==============================!
    != Constants
    !==============================!
    real(REAL64), parameter :: klatosa = 6000.0
    real(REAL64), parameter :: dw = 200.0
    real(REAL64), parameter :: ltor = 0.77302587552347657
    real(REAL64), parameter :: k_allom1 = 100.0 !allometric constant (Table 3; Sitch et al., 2003)
    real(REAL64), parameter :: k_allom2 = 36.0
    real(REAL64), parameter :: k_allom3 = 0.22
    real(REAL64), parameter :: spec_leaf = 15.365607091853349 
    real(REAL64), parameter :: bminc = 120.0000000
    real(REAL64), parameter :: tol = 0.0000001
    real(REAL64), parameter :: pi = 3.1415926536
    real(REAL64), parameter :: krp = 1.6 !allometric constant (Table 3; Sitch et al., 2003)

    !==============================!

end module constants