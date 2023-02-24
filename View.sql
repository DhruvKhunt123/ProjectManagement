create view vProject
as
select 
	Project.ProjectName,
	TypeOfProject.ProjectTypeName,
	Builder.BuilderName,
	Developer.DeveloperName,
	ProjectIssue.IssueDetails,
	ProjectStatus.OnGoingTask,
	PropertyLocation.Area
from Project
join TypeOfProject on Project.ProjectTypeId = TypeOfProject.ProjectTypeId
join Builder on Project.BuilderId = Builder.BuilderId
join Developer on Project.DeveloperId = Developer.DeveloperId
join ProjectIssue on Project.TicketId = ProjectIssue.TicketId
join ProjectStatus on Project.TaskStatusId = ProjectStatus.TaskStatusId
join PropertyLocation on Project.LocationId = PropertyLocation.LocationId;

select * from vProject