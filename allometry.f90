module allometry
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    
    implicit none

    real(REAL64) :: dwood = 200 !g/cm-3
    !real(REAL64) :: delta_leaf = 5.0
    !real(REAL64) :: delta_root = 5.0
    !real(REAL64) :: delta_sapwood = 8.0

    contains

    function leaf_area_index() result(LAI)
        use constants
        !use allocation_test
        real(REAL64) :: CA
        real(REAL64) :: LAI
        real(REAL64) :: delta_leaf = 5.0
        !call leaf_carbon(delta_leaf)

        LAI = (delta_leaf*spec_leaf)/CA

    end function leaf_area_index

    function diameter() result(diam)
        use constants
        !use allocation_test
        real(REAL64) :: dwood
        real(REAL64) :: diam
        real(REAL64) :: delta_sapwood = 12.0
        !call sapwood_carbon(delta_leaf, delta_root, delta_sapwood)
        
        diam = ((4+(delta_sapwood))/((dwood)*pi*40))&
        &**(1/(2+0.5))

    end function diameter

    function crown_area() result(CA)
        use constants
        real(REAL64) :: diam
        real(REAL64) :: CA

        CA = k_allom1*(diam**krp)

    end function crown_area


    function height() result(hgt)
        use constants
        real(REAL64) :: diam
        real(REAL64) :: hgt

        hgt = k_allom2*(diam**k_allom3)

    end function height

end module allometry