program rainfall
implicit none 
integer::x,i,st,j,N
real::MO
integer, parameter, save ::Nmax=50
character(20)::s
integer::rain(1,Nmax),R(1,Nmax)
character(15)::town(1,Nmax),T(1,Nmax)




  call ReadData(Nmax,'data.txt',T,R,N)
  print*,N
  PRINT*,T
  print*,R
  MO=FO(R,N)
  print *, MO
  






 close(10)


 contains 

subroutine ReadData (Nmax,FileName,T,R,N)
Integer, intent(out)::N
Integer, intent(in)::Nmax
character(*),intent(in)::FileName
character(15),intent(out)::T(1,Nmax)
integer,intent(out)::R(1,Nmax)
integer::st,i

N=Nmax
T='0'
R=0

 
open(10,file=Filename,iostat=st)


    read(10,*,iostat=st)
  do i=1,Nmax
   read(10,*,iostat=st) s,x
    if (st==-1) exit
      !print *,s,x
       T(1,i)=s
         R(1,i)=x
  end do
  do i=1,Nmax
   if  (R(1,i)==0) N=N-1
     
      end do 
      


end subroutine ReadData

PURE function FO(R,N) 
INTEGER, intent(in)::R(1,Nmax),N
REAL::FO

FO=REAL(SUM(R))/REAL(N)

end function FO
 
end 