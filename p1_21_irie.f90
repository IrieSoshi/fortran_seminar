program circle_area
    implicit none
    real(8) r, r2, pi2, dth, er, carea, myarea
    integer :: n, nmax,  fo = 10
    write(*,*) 'imput r, n (0 < r, 3 <= n) : '
    read(*,*) r, nmax
    if (r <= 0.0d0 .or. nmax < 3) &
    stop 'r <= 0.0d0 .or. nmax <3 '
    write(*,*) 'calculate er from 3 to ', nmax
    open(fo, file = 'output.txt')
    pi2 = 2.0d0 * acos(-1.0d0)
    r2 = r ** 2
    carea = 0.5d0 * pi2 * r2
    do n = 3, nmax
        dth = pi2 / dble(n)
        myarea = 0.5d0 * r2 * sin(dth) * dble(n)
        er = carea - myarea
        write(*,*) n, er
        write(fo, *) n, er
    end do
    close(fo)
    write(*,*) 'normal end, check output.txt...'
end program circle_area
 