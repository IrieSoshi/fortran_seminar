program numseq_outputfile
    implicit none
    integer :: i, fo = 10
    real(8) a, r
    a = 16.0d0
    r = 0.8d0
    open(fo, file ='output.txt')
    do i = 1, 10
        write(fo, *) i, a
        a = a * r
    end do
    close(fo)
    write(*,*) 'output.txt file created.'
end program numseq_outputfile
