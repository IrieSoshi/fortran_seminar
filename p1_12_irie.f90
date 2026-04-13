program num_sequence
    implicit none
   integer n, nmax
   real(8) a, a1, r, mysum, sn
   nmax = 100
   a1 = 16.0d0
   r = 0.8d0
   a = a1
    mysum = 0.0d0
    do n = 1, nmax
        if (n <= 10) write(*,*) 'n, an = ', n, a
        mysum = mysum + a
        a = a * r
    end do
    sn = a1 * (1.0d0 - r**n) / (1.0d0 - r)
    write(*,*) 'mysum =', mysum, 'sn =', sn
    write(*,*) 'mysum - sn =', mysum - sn
end program num_sequence

    