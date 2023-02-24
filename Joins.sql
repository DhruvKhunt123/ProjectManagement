 select ProjectIssue.IssueDetails , Project.ProjectName , ProjectIssue.TicketId
 from Project
 right join ProjectIssue on Project.TicketId=ProjectIssue.TicketId;

 select Builder.BuilderName , Project.ProjectId, Project.ProjectName
 from Project
 inner join Builder on Project.BuilderId=Builder.BuilderId;



 select Builder.BuilderAddress,Builder.BuilderPhoneNo,Builder.BuilderName,Developer.DeveloperName from Builder
 right join Developer on Builder.DeveloperId=Developer.DeveloperId