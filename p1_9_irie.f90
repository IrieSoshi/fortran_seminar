program simple_gcd
    implicit none
    integer :: m, n, i, gcd, tmp_n, max = 10 ** 4
    write(*,*) ' input m, n (1 <= m, n <= 10 ** 4): '
    read(*,*) m, n
    if (m < 1 .or. n < 1) stop 'm < 1 or n < 1'
    if (m > max .or. n >max) stop 'm > 10 ** 4 or n > 10 ** 4'
    if (n < m) then 
        tmp_n = n
        n = m
        m = tmp_n
    end if  
    do i = 1, n
        if (mod(m, i) == 0 .and. mod(n, i) == 0) then
            gcd = i
        end if
    end do
    write(*,*) 'saidaikouyaku wa ', gcd
end program simple_gcd
