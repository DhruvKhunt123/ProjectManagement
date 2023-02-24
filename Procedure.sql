create proc BuilderData(@BName varchar(15),@Bmail varchar(30),@BPhone varchar(30),@Baddress varchar(50),@Bdev int)

as 
begin
insert into Builder values(@BName,@Bmail,@BPhone,@Baddress,@Bdev)
end

Exec BuilderData 'rajesh','rj@gmail.com','9858656956','Kalyaninagar,pune',24


delete from Builder where BuilderId=26
alter proc ProjectBuilder(@Pid int)
as 
begin
  Declare @Bid int
  select @Bid= BuilderId from Project where ProjectId=@Pid
  select BuilderName from Builder where BuilderId=@Bid

end
exec ProjectBuilder 17

select * from Builder
select * from Project


    



