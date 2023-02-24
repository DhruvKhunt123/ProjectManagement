
--function 1
create function dbo.CountDeveloper(@builderId int)
returns int
as
    begin
        declare @total int
        select @total = count(DeveloperId) from Builder where BuilderId=@builderId
        return @total
    end
go


select 
    *,
    dbo.CountDeveloper(BuilderId) as Total_Developers
from
Builder


--function 2


create function dbo.total_project(@builderId int)
returns int
as
    begin
        declare @total int
        select @total=count(ProjectId) from Project where BuilderId=@builderId
        return @total
    end
go

select
    *,
    dbo.total_project(BuilderId) as Total_project
from
Builder

