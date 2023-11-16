program rainfall
implicit none
integer::x,i,st,rain(1,5)
character(20)::s,town(1,5)



open(10,file='data.txt',iostat=st)
if (st/=0) then
print*, 'To arxeio den yparxei'
else
print*, 'To arxeio yparxei'

end if
read(10,'(A)',iostat=st)s



 do i= 1,5
   read(10,*,iostat=st) s,x
   !if (st==-1) exit
  print *,s,x
  town(1,i)=s
  rain(1,i)=x
 end do
 print*,rain
 print *,town
!hi
 close(10)
end