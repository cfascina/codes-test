program run_test
    use ISO_FORTRAN_ENV, only: REAL32, REAL64, REAL128
    use allocation_test
    use constants
    ! implicit none

    ! DECLARAÇÃO DO VETOR 'carbon_leaf' COM SUAS AS VARIÁVEIS
    type :: carbon_leaf
        real(REAL64) :: L_new
        real(REAL64) :: delta_leaf
    end type carbon_leaf

    ! DEFINIÇÃO DA DIMENSÃO DO VETOR 'carbon_leaf'
    type(carbon_leaf), allocatable :: cl(:)
	integer :: dimensions = 3
	allocate(cl(1:dimensions))

    ! DEFINIÇÃO DE VALORES PARA 'L_new' e 'delta_leaf' PARA CADA DIMENSÃO
    cl(1)%L_new = 1.1
    cl(1)%delta_leaf = 1.2
    cl(2)%L_new = 2.1
    cl(2)%delta_leaf = 2.2
    cl(3)%L_new = 3.1
    cl(3)%delta_leaf = 3.2

    ! O BLOCO ACIMA DEVERÁ SER SUBSTITUÍDO POR UMA ESTRUTURA DE REPETIÇÃO QUE IRÁ 
    ! CHAMAR AS DEVIDAS FUNÇÕES PARA CADA DIMENSÃO, PARA QUANTAS DIMENSÕES FOR PRECISO.
    ! Seria para cada PLS? Para cada PLS a cada X período de tempo? O código abaixo
    ! mostra um exemplo hipotético:
    
    ! do i = 1, dimensions
    !     cl(i)%delta_leaf = calc_delta_leaf(param1)
    !     cl(i)%L_new = delta_leaf + L
    ! end do

    ! IMPRESSÃO DOS VALORES NA TELA
    do i = 1, dimensions
        print*, cl(i)%L_new
        print*, cl(i)%delta_leaf
    end do
	
    ! real(REAL64) :: delta_leaf
    ! real(REAL64) :: delta_root
    ! real(REAL64) :: delta_sapwood
    ! real(REAL64) :: cleaf
    ! real(REAL64) :: L_new
    
    ! call show_consts()
    
    ! call leaf_carbon(delta_leaf)
    ! print*, 'CARBON ON LEAF =', delta_leaf

    ! call root_carbon(delta_leaf, delta_root)
    ! print*, 'CARBON ON ROOT =', delta_root
    
    ! call sapwood_carbon(delta_leaf, delta_root, delta_sapwood)
    ! print*, 'CARBON ON SAPWOOD =', delta_sapwood

end program run_test