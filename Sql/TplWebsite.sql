use TplWebsite
go
create table Position(
	Pos_Id int identity(1,1) constraint pk_pos_id primary key,
	Pos_Title nvarchar(500) constraint default_pos_title default '',
	Pos_Icon varchar(max) constraint default_pos_icon default '',
	Pos_Thumbnail varchar(max) constraint default_pos_thumbnail default '',
	Pos_History ntext constraint default_pos_history default '',
	Pos_Created_Date datetime constraint default_pos_created_date default getdate(),
	Pos_Updated_Date datetime constraint default_pos_updated_date default getdate(),
	Pos_Created_User_Id int constraint default_pos_created_user_id default 1 not null,
	Pos_Updated_User_Id int constraint default_pos_updated_user_id default 1 not null,
	Pos_Status bit constraint default_pos_status default 1
)
go
create table Permision(
	Per_Id int identity(1,1) constraint pk_per_id primary key,
	Per_Title nvarchar(500) constraint default_per_title default '',
	Per_Icon varchar(max) constraint default_per_icon default '',
	Per_Thumbnail varchar(max) constraint default_per_thumbnail default '',
	Per_History ntext constraint default_per_history default '',
	Per_Created_Date datetime constraint default_per_created_date default getdate(),
	Per_Updated_Date datetime constraint default_per_updated_date default getdate(),
	Per_Created_User_Id int constraint default_per_created_user_id default 1 not null,
	Per_Updated_User_Id int constraint default_per_updated_user_id default 1 not null,
	Per_Status datetime constraint default_per_status default 1
)
go
create table [Admin](
	Ad_Id int identity(1,1) constraint pk_ad_id primary key,
	Ad_Title varchar(5) constraint default_ad_title default '',
	Ad_First_Name nvarchar(20) constraint default_ad_first_name default '',
	Ad_Last_Name nvarchar(20) constraint default_ad_last_name default '',
	Ad_Full_Name nvarchar(40) constraint default_ad_full_name default '',
	Ad_Icon varchar(max) constraint default_ad_icon default '',
	Ad_Thumbnail varchar(max) constraint default_ad_thumbnail default '',
	Ad_Dob datetime constraint default_ad_dob default getdate() - 6600,
	Ad_Gender nvarchar(30) constraint default_ad_gender default '',
	Ad_User_Name varchar(500) constraint default_ad_user_name default '',
	Ad_Password varchar(max) constraint default_ad_password default '',
	Ad_Email varchar(500) constraint default_ad_email default '',
	Ad_Address nvarchar(max) constraint default_ad_address default '',
	Ad_Current_Address nvarchar(max) constraint default_ad_current_address default '',
	Ad_Hire_Date datetime constraint default_ad_hire_date default getdate(),
	Ad_Severance_Date datetime constraint default_ad_severance_date default getdate(),
	Ad_History ntext constraint default_ad_history default '',
	Ad_Created_Date datetime constraint default_ad_created_date default getdate(),
	Ad_Updated_Date datetime constraint default_ad_updated_date default getdate(),
	Ad_Created_User_Id int constraint default_ad_created_user_id default 1 not null,
	Ad_Updated_User_Id int constraint default_ad_updated_user_id default 1 not null,
	Ad_Status int constraint default_ad_status default 1
)
go

go
create table Category(
	Cate_Id int identity(1,1) constraint pk_cate_id primary key,
	Cate_Title nvarchar(200) constraint default_cate_title default '',
	Cate_Icon varchar(max) constraint default_cate_icon default '',
	Cate_Thumbnail varchar(max) constraint default_cate_thumbnail default '',
	Cate_History ntext constraint default_cate_history default '',
	Cate_Created_Date datetime constraint default_cate_created_date default getdate(),
	Cate_Updated_Date datetime constraint default_cate_updated_date default getdate(),
	Cate_Created_User_Id int constraint default_cate_created_user_id default 1 not null,
	Cate_Updated_User_Id int constraint default_cate_updated_user_id default 1 not null,
	Cate_Status bit constraint default_cate_status default 1
)
go
create table HighLight(
	Hl_Id int identity(1,1) constraint pk_hl_id primary key,
	Hl_Title nvarchar(500) constraint default_hl_title default '',
	Hl_Description ntext constraint default_hl_description default '',
	Hl_Icon varchar(max) constraint default_hl_icon default '',
	Hl_Thumbnail varchar(max) constraint default_hl_thumbnail default '',
	Hl_History ntext constraint default_Hl_history default '',
	Hl_Created_Date datetime constraint default_hl_created_date default getdate(),
	Hl_Updated_Date datetime constraint default_hl_updated_date default getdate(),
	Hl_Created_User_Id int constraint default_hl_created_user_id default 1 not null,
	Hl_Updated_User_Id int constraint default_hl_updated_user_id default 1 not null,
	Hl_Status bit constraint default_hl_status default 1
)
go
create table Slider(
	Sli_Id int identity(1,1) constraint pk_sli_id primary key,
	Sli_Title nvarchar(500) constraint default_sli_title default '',
	Sli_Description nvarchar(max) constraint default_sli_description default '',
	Sli_Icon varchar(max) constraint default_sli_icon default '',
	Sli_Thumbnail varchar(max) constraint default_sli_thumbnail default '',
	Sli_History ntext constraint default_sli_history default '',
	Sli_Created_Date datetime constraint default_sli_created_date default getdate(),
	Sli_Updated_Date datetime constraint default_sli_updated_date default getdate(),
	Sli_Created_User_Id int constraint default_sli_created_user_id default 1 not null,
	Sli_Updated_User_Id int constraint default_sli_updated_user_id default 1 not null,
	Sli_Status bit constraint default_sli_status default 1
)
go
create table Blog(
	Bl_Id int identity(1,1) constraint pk_bl_id primary key,
	Bl_Title nvarchar(max) constraint default_bl_title default '',
	Bl_Intro nvarchar(max) constraint default_bl_intro default '',
	Bl_Description ntext constraint default_bl_bl_description default '',
	Bl_Icon varchar(max) constraint default_bl_icon default '',
	Bl_Thumbnail varchar(max) constraint default_bl_thumbnail default '',
	Bl_Type int constraint default_bl_type default 1,
	Bl_History ntext constraint default_bl_history default '',
	Bl_Created_Date datetime constraint default_bl_created_date default getdate(),
	Bl_Updated_Date datetime constraint default_bl_updated_date default getdate(),
	Bl_Created_User_Id int constraint default_bl_created_user_id default 1 not null,
	Bl_Updated_User_Id int constraint default_bl_updated_user_id default 1 not null,
	Bl_Status int constraint default_bl_status default 1
)
go
create table [Partner](
	Part_Id int identity(1,1) constraint pk_part_id primary key,
	Part_Title nvarchar(50) constraint default_part_title default '',
	Part_Name nvarchar(500) constraint default_part_name default '',
	Part_Website varchar(500) constraint default_website default '',
	Part_History ntext constraint default_part_history default '',
	Part_Created_Date datetime constraint default_part_created_date default getdate(),
	Part_Updated_Date datetime constraint default_part_updated_date default getdate(),
	Part_Created_User_Id int constraint default_part_created_user_id default 1 not null,
	Part_Updated_User_Id int constraint default_part_updated_user_id default 1 not null,
	Part_Status int constraint default_part_status default 1
)
go
create table Logger(
	Log_Id int identity(1,1) constraint pk_log_id primary key,
	Log_Data ntext constraint default_log_data default '',
	Log_Mes ntext constraint  default_log_mes default '',
	Log_Is_Error bit constraint default_log_is_error default 0,
	Log_Created_Date datetime constraint default_log_created_date default getdate(),
)
go
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