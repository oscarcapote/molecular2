!********************************************************************************
!********************************** SUBROUTINE PBC ******************************
!********************************************************************************
!
!                                                          Lorena Vega Domínguez
!********************************************************************************


subroutine Refold_Positions(pos,N,dimnsion,BoxSize)
implicit none
integer::dimnsion,N,i !N=Number of part. 
real:: BoxSize
real,dimension(N,dimnsion):: pos !positions
do i=N
 pos(i,:)=pos(i,:)-BoxSize*nint(pos(i,:)/BoxSize) !periodic conditions
end do
end subroutine Refold_Positions
