program sum_input_mn2
    implicit none
    integer wa, n, m, i, tmp_n
    write(*,*) ' input m, n: '
    read(*,*) m, n
    if (n < m) then 
        tmp_n = n
        n = m
        m = tmp_n
    end if
    wa = 0
    do i = m, n
        wa = wa + i
    end do
    write(*,*) ' sum from ', m, ' to ', n, ' is ', wa   
end program sum_input_mn2
