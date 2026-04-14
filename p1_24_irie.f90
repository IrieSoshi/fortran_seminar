program thermal_conduction1d
    implicit none 
    integer :: i, j, k, m, fo = 10
    real(8) :: L = 1.0d0, kap = 0.01d0
    real(8) rk2, ck, t, x, ak, bk, fk, dx, tp, ctp, wa, pi, pm
   write(*,*) 'input m (2 <= m) :'
    read(*,*) m
    if(m < 2) stop 'stop: m , 2'
    dx = L / dble(m)
    pi = acos(-1.0d0)
    ctp = 4.0d0 * L / (pi ** 2)
    open(fo, file = 'output.txt')
    do j = 1, 11
        t = 1.0d0 * dble(j - 1)
        do i = 1, m + 1
            x = dx * dble(i - 1)
           if(i == 1 .or. i == m+1) then
            tp = 0.0d0
            write(fo, '(3e12.4)') t, x, tp
            cycle
           endif
           wa = 0.0d0
           do k = 1, 50
            ck = dble(2 * k - 1)
            rk2 = kap * ((ck * pi / L) ** 2)
            pm = dble((-1) ** (k - 1))
            ak = pm / (ck ** 2)
            bk = ck * pi / L
            fk = ak * exp(-rk2 * t) * sin(bk * x)
            wa = wa + fk
              end do
              tp = ctp * wa
                write(fo, '(3e12.4)') t, x, tp
        end do
        write(fo, *) ''
    end do
    close(fo)
end program thermal_conduction1d

                