program newton 
    implicit none
    real(8) :: er0 = 1.0d-6
    real(8) x1, x2, a, er
    integer :: k, i, im = 1000
    write(*,*) 'input a, k: '
    read(*,*) a, k
    if(a <= 0.0d0 .or. k < 2) stop 'a <= 0.0 or k < 2'
    x1 = a
    do i = 1, im
        x2 = x1 - (x1 ** k - a) / (k * x1 ** (k - 1))
        er = abs(x2 - x1)
        if(er < er0) exit
        x1 = x2
    end do
    write(*,*) 'kai, i, er = ', x2, k, er
    write(*,*) 'kai - beki = ', &
    x2 - a ** (1.0d0 / dble(k))
    end program newton
    
