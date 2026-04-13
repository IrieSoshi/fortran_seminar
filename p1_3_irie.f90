program main
 implicit none
 ! anはa_n, a1はa_{n-1}, a2はa_{n-2}
 integer :: n, an, a1, a2
 a2 = 0 ! a0
    a1 = 1 ! a1
    n=0
    write(*,*) 'n, an = ', n, a2 ! 出力
    n=1
    write(*,*) 'n, an = ', n, a1 ! 出力
    do n=2, 10 ! a_3からa_{10}まで計算
        an = a1 + a2 ! a_n = a_{n-1} + a_{n-2}
        write(*,*) 'n, an = ', n, an ! 出力
        a2 = a1 ! a_{n-2}を更新
        a1 = an ! a_{n-1}を更新
    end do
end program main