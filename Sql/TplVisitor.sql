use TplVisitor
create table Visitor(
	Vis_Id int identity(1,1) constraint pk_vis_id primary key,
	Vis_Title varchar(5) constraint default_vis_title default '',
	Vis_First_Name nvarchar(20) constraint default_vis_first_name default '',
	Vis_Last_Name nvarchar(20) constraint default_vis_last_name default '',
	Vis_Full_Name nvarchar(40) constraint default_vis_full_name default '',
	Vis_Icon varchar(max) constraint default_vis_icon default '',
	Vis_Thumbnail varchar(max) constraint default_vis_thumbnail default '',
	Vis_Dob datetime constraint default_vis_dob default getdate() - 6600,
	Vis_Gender nvarchar(30) constraint default_vis_gender default '',
	Vis_User_Name varchar(500) constraint default_vis_user_name default '',
	Vis_Password varchar(max) constraint default_vis_password default '',
	Vis_Email varchar(500) constraint default_vis_email default '',
	Vis_Address nvarchar(max) constraint default_vis_address default '',
	Vis_Current_Address nvarchar(max) constraint default_vis_current_address default '',
	Vis_History ntext constraint default_vis_history default '',
	Vis_Created_Date datetime constraint default_vis_created_date default getdate(),
	Vis_Updated_Date datetime constraint default_vis_updated_date default getdate(),
	Vis_Created_User_Id int constraint default_vis_created_user_id default 1 not null,
	Vis_Updated_User_Id int constraint default_vis_updated_user_id default 1 not null,
	Vis_Status int constraint default_vis_status default 1
)
go
create table BlogComment(
	Blc_Id int identity(1,1) constraint pk_blc_pk primary key,
	Blc_Visitor_Id int constraint fk_blc_visitor_id references Visitor(Vis_Id),
	Blc_Blog_Id int constraint fk_blc_blog_id default 1,
	Blc_Description ntext constraint default_blc_description default '',
	Blc_History ntext constraint default_blc_history default '',
	Blc_Created_Date datetime constraint default_blc_created_date default getdate(),
	Blc_Updated_Date datetime constraint default_blc_updated_date default getdate(),
	Blc_Created_User_Id int constraint default_blc_created_user_id default 1 not null,
	Blc_Updated_User_Id int constraint default_blc_updated_user_id default 1 not null,
	Blc_Status int constraint default_blc_status default 1
)
go
create table WebTrace(
	Wt_Id int identity(1,1) constraint pk_wt_id primary key,
	Wt_Tool_Name nvarchar(500) constraint default_wt_tool_name default '',
	Wt_Visitor_Id int constraint fk_wt_visitor_id references Visitor(Vis_Id),
	Wt_Ip varchar(500) constraint default_wt_ip default '',
	Wt_Location nvarchar(max) constraint default_wt_location default '',
)