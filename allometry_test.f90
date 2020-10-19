module allometry
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128

    implicit none

    real(REAL64) :: delta_leaf
    real(REAL64) :: delta_root
    real(REAL64) :: delta_sapwood

    contains

    function diameter() result(diam)
        use constants
        use allocation_test
        implicit none

        real(REAL64) :: diam
        call sapwood_carbon(delta_leaf, delta_root, delta_sapwood)
        
        diam = ((4 + (delta_sapwood)) / ((dw) * pi * 40)) **&
        &(1 / (2 + 0.5))

    end function diameter

    function leaf_area_index() result(LAI)
        use constants
        use allocation_test
        implicit none
        
        real(REAL64) :: CA
        real(REAL64) :: delta_leaf
        real(REAL64) :: LAI
        call leaf_carbon(delta_leaf)

        LAI = (delta_leaf*spec_leaf)/CA

    end function leaf_area_index

    function crown_area() result(CA)
        use constants
        implicit none
        
        real(REAL64) :: diam
        real(REAL64) :: CA

        CA = k_allom1*(diam**krp)

    end function crown_area

    function height() result(hgt)
        use constants
        implicit none
        
        real(REAL64) :: diam
        real(REAL64) :: hgt

        hgt = k_allom2*(diam**k_allom3)

    end function height

end module allometry