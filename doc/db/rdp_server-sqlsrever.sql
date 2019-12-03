USE [rdp_server]
GO
/****** Object:  Table [dbo].[chart_test]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chart_test](
	[id] [int] NOT NULL,
	[model] [nvarchar](255) NULL,
	[val] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_set]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_set](
	[dt_id] [int] IDENTITY(1,1) NOT NULL,
	[dt_name] [nvarchar](80) NULL,
	[ds_id] [int] NULL,
	[type] [nvarchar](10) NULL,
	[sql] [nvarchar](max) NULL,
	[data_type] [nvarchar](10) NULL,
	[sts] [nvarchar](1) NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
	[order_by_str] [nvarchar](255) NULL,
 CONSTRAINT [PK__data_set__522D884C40058253] PRIMARY KEY CLUSTERED 
(
	[dt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_source]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_source](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](80) NULL,
	[model] [nvarchar](10) NULL,
	[type] [nvarchar](20) NULL,
	[version] [nvarchar](10) NULL,
	[driver] [nvarchar](100) NULL,
	[addr] [nvarchar](300) NULL,
	[usr] [nvarchar](100) NULL,
	[password] [nvarchar](200) NULL,
	[icon] [nvarchar](20) NULL,
	[readonly] [nvarchar](1) NULL,
	[sts] [nvarchar](1) NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
 CONSTRAINT [PK__data_sou__3213E83F42E1EEFE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_type]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](80) NULL,
	[model] [nvarchar](20) NULL,
	[type] [nvarchar](20) NULL,
	[driver] [nvarchar](100) NULL,
	[addr_demo] [nvarchar](120) NULL,
	[sts] [nvarchar](1) NULL,
	[icon] [nvarchar](80) NULL,
 CONSTRAINT [PK__db_type__3213E83F45BE5BA9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_showcol]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_showcol](
	[show_id] [int] NOT NULL,
	[dt_id] [int] NULL,
	[use_id] [int] NULL,
	[is_show] [nvarchar](1) NULL,
	[data_type] [nvarchar](10) NULL,
	[alias] [nvarchar](80) NULL,
	[describe] [nvarchar](200) NULL,
	[tx_time] [datetime] NULL,
	[tx_op] [nvarchar](255) NULL,
 CONSTRAINT [PK__ds_showc__2B97D71C4B7734FF] PRIMARY KEY CLUSTERED 
(
	[show_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_filter]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_filter](
	[filter_id] [int] NOT NULL,
	[dt_id] [int] NULL,
	[table_name] [nvarchar](80) NULL,
	[column] [nvarchar](30) NULL,
	[col_type] [nvarchar](1) NULL,
	[operator] [nvarchar](10) NULL,
	[param_type] [nvarchar](1) NULL,
	[param] [nvarchar](30) NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
 CONSTRAINT [PK__dt_filte__833C443F4E53A1AA] PRIMARY KEY CLUSTERED 
(
	[filter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_param]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_param](
	[param_id] [int] NOT NULL,
	[param_name] [nvarchar](80) NULL,
	[dt_id] [int] NULL,
	[param_type] [nvarchar](255) NULL,
	[data_type] [nvarchar](255) NULL,
	[if_values] [nvarchar](1) NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
 CONSTRAINT [PK__dt_param__9282B81651300E55] PRIMARY KEY CLUSTERED 
(
	[param_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_table]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_table](
	[use_id] [int] NOT NULL,
	[dt_id] [int] NOT NULL,
	[table_name] [nvarchar](80) NULL,
	[table_comments] [nvarchar](120) NULL,
	[level] [nvarchar](1) NULL,
	[show_name] [nvarchar](80) NULL,
	[px] [int] NULL,
	[py] [int] NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
 CONSTRAINT [PK__dt_table__15285507540C7B00] PRIMARY KEY CLUSTERED 
(
	[use_id] ASC,
	[dt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_table_rs]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_table_rs](
	[rs_id] [int] NOT NULL,
	[use_id] [int] NOT NULL,
	[rs_type] [nvarchar](10) NULL,
	[rs_model] [nvarchar](1) NULL,
	[tx_time] [datetime] NULL,
	[up_time] [datetime] NULL,
	[tx_op] [nvarchar](30) NULL,
	[up_op] [nvarchar](30) NULL,
 CONSTRAINT [PK__dt_table__D965BF5E56E8E7AB] PRIMARY KEY CLUSTERED 
(
	[rs_id] ASC,
	[use_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_table_rs_condition]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_table_rs_condition](
	[cd_id] [int] NOT NULL,
	[cd_type] [nvarchar](10) NULL,
	[rename] [nvarchar](255) NULL,
	[left_table] [nvarchar](255) NULL,
	[left_col] [nvarchar](255) NULL,
	[operator] [nvarchar](255) NULL,
	[right_table] [nvarchar](255) NULL,
	[right_col] [nvarchar](255) NULL,
	[tx_time] [datetime] NULL,
	[tx_op] [nvarchar](255) NULL,
 CONSTRAINT [PK__dt_table__D551B53659C55456] PRIMARY KEY CLUSTERED 
(
	[cd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_blob_triggers]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_blob_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[BLOB_DATA] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_calendars]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_calendars](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[CALENDAR_NAME] [nvarchar](200) NOT NULL,
	[CALENDAR] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_cron_triggers]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_cron_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[CRON_EXPRESSION] [nvarchar](120) NOT NULL,
	[TIME_ZONE_ID] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_fired_triggers]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_fired_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[ENTRY_ID] [nvarchar](95) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[FIRED_TIME] [bigint] NOT NULL,
	[SCHED_TIME] [bigint] NOT NULL,
	[PRIORITY] [int] NOT NULL,
	[STATE] [nvarchar](16) NOT NULL,
	[JOB_NAME] [nvarchar](200) NULL,
	[JOB_GROUP] [nvarchar](200) NULL,
	[IS_NONCONCURRENT] [nvarchar](1) NULL,
	[REQUESTS_RECOVERY] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_job_details]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_job_details](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[JOB_NAME] [nvarchar](200) NOT NULL,
	[JOB_GROUP] [nvarchar](200) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[JOB_CLASS_NAME] [nvarchar](250) NOT NULL,
	[IS_DURABLE] [nvarchar](1) NOT NULL,
	[IS_NONCONCURRENT] [nvarchar](1) NOT NULL,
	[IS_UPDATE_DATA] [nvarchar](1) NOT NULL,
	[REQUESTS_RECOVERY] [nvarchar](1) NOT NULL,
	[JOB_DATA] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_locks]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_locks](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[LOCK_NAME] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[LOCK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_paused_trigger_grps]    Script Date: 2019/4/19 16:36:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_paused_trigger_grps](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_scheduler_state]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_scheduler_state](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[LAST_CHECKIN_TIME] [bigint] NOT NULL,
	[CHECKIN_INTERVAL] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_simple_triggers]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_simple_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[REPEAT_COUNT] [bigint] NOT NULL,
	[REPEAT_INTERVAL] [bigint] NOT NULL,
	[TIMES_TRIGGERED] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_simprop_triggers]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_simprop_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[STR_PROP_1] [nvarchar](512) NULL,
	[STR_PROP_2] [nvarchar](512) NULL,
	[STR_PROP_3] [nvarchar](512) NULL,
	[INT_PROP_1] [int] NULL,
	[INT_PROP_2] [int] NULL,
	[LONG_PROP_1] [bigint] NULL,
	[LONG_PROP_2] [bigint] NULL,
	[DEC_PROP_1] [decimal](13, 4) NULL,
	[DEC_PROP_2] [decimal](13, 4) NULL,
	[BOOL_PROP_1] [nvarchar](1) NULL,
	[BOOL_PROP_2] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_triggers]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_triggers](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[JOB_NAME] [nvarchar](200) NOT NULL,
	[JOB_GROUP] [nvarchar](200) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[NEXT_FIRE_TIME] [bigint] NULL,
	[PREV_FIRE_TIME] [bigint] NULL,
	[PRIORITY] [int] NULL,
	[TRIGGER_STATE] [nvarchar](16) NOT NULL,
	[TRIGGER_TYPE] [nvarchar](8) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NULL,
	[CALENDAR_NAME] [nvarchar](200) NULL,
	[MISFIRE_INSTR] [smallint] NULL,
	[JOB_DATA] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_job]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_job](
	[job_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bean_name] [nvarchar](200) NULL,
	[method_name] [nvarchar](100) NULL,
	[params] [nvarchar](2000) NULL,
	[cron_expression] [nvarchar](100) NULL,
	[status] [tinyint] NULL,
	[remark] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__schedule__6E32B6A57C1A6C5A] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_job_log]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_job_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[job_id] [bigint] NOT NULL,
	[bean_name] [nvarchar](200) NULL,
	[method_name] [nvarchar](100) NULL,
	[params] [nvarchar](2000) NULL,
	[status] [tinyint] NOT NULL,
	[error] [nvarchar](2000) NULL,
	[times] [int] NOT NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__schedule__9E2397E07EF6D905] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_area]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_area](
	[area_no] [nvarchar](15) NOT NULL,
	[area_name] [nvarchar](80) NOT NULL,
	[lev] [nvarchar](1) NULL,
	[uplev] [nvarchar](15) NULL,
	[area_sts] [nvarchar](1) NULL,
	[if_leaf] [nvarchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_config]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_config](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[param_key] [nvarchar](50) NULL,
	[param_value] [nvarchar](2000) NULL,
	[status] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
 CONSTRAINT [PK__sys_conf__3213E83F01D345B0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept](
	[dept_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_id] [bigint] NULL,
	[name] [nvarchar](50) NULL,
	[order_num] [int] NULL,
	[del_flag] [tinyint] NULL,
 CONSTRAINT [PK__sys_dept__DCA6597404AFB25B] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dict]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dict](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[type] [nvarchar](100) NOT NULL,
	[code] [nvarchar](100) NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
	[order_num] [int] NULL,
	[remark] [nvarchar](255) NULL,
	[del_flag] [tinyint] NULL,
 CONSTRAINT [PK__sys_dict__3213E83F078C1F06] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_log]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[operation] [nvarchar](50) NULL,
	[method] [nvarchar](200) NULL,
	[params] [nvarchar](max) NULL,
	[time] [bigint] NOT NULL,
	[ip] [nvarchar](64) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__sys_log__3213E83F0A688BB1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_menu]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_menu](
	[menu_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_id] [bigint] NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](200) NULL,
	[perms] [nvarchar](500) NULL,
	[type] [int] NULL,
	[icon] [nvarchar](50) NULL,
	[order_num] [int] NULL,
	[open_mode] [nvarchar](10) NULL,
 CONSTRAINT [PK__sys_menu__4CA0FADC0D44F85C] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_oss]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_oss](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](200) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__sys_oss__3213E83F10216507] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[role_id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[remark] [nvarchar](100) NULL,
	[dept_id] [bigint] NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__sys_role__760965CC12FDD1B2] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_dept]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_dept](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NULL,
	[dept_id] [bigint] NULL,
 CONSTRAINT [PK__sys_role__3213E83F15DA3E5D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_menu]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_menu](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NULL,
	[menu_id] [bigint] NULL,
 CONSTRAINT [PK__sys_role__3213E83F18B6AB08] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[email] [nvarchar](100) NULL,
	[mobile] [nvarchar](100) NULL,
	[status] [tinyint] NULL,
	[dept_id] [bigint] NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__sys_user__B9BE370F1B9317B3] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user_role]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user_role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[role_id] [bigint] NULL,
 CONSTRAINT [PK__sys_user__3213E83F1E6F845E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_way]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_way](
	[way_no] [nvarchar](6) NOT NULL,
	[way_name] [nvarchar](80) NULL,
	[lev] [nvarchar](1) NULL,
	[uplev] [nvarchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[way_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_token]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_token](
	[user_id] [bigint] NOT NULL,
	[token] [nvarchar](100) NOT NULL,
	[expire_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK__tb_token__B9BE370F24285DB4] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 2019/4/19 16:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[mobile] [nvarchar](20) NOT NULL,
	[password] [nvarchar](64) NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__tb_user__B9BE370F2704CA5F] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (1, N'1', N'100', N'1')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (2, N'2', N'200', N'2')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (3, N'3', N'300', N'1')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (4, N'4', N'400', N'2')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (5, N'1', N'500', N'1')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (6, N'2', N'600', N'2')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (7, N'3', N'700', N'1')
INSERT [dbo].[chart_test] ([id], [model], [val], [type]) VALUES (8, N'4', N'800', N'2')
SET IDENTITY_INSERT [dbo].[data_set] ON 

INSERT [dbo].[data_set] ([dt_id], [dt_name], [ds_id], [type], [sql], [data_type], [sts], [tx_time], [up_time], [tx_op], [up_op], [order_by_str]) VALUES (4, N'测试SQL', 107, N'mysql', N'select * from db_type', N'sql', N'1', NULL, CAST(N'2019-01-10T12:02:50.000' AS DateTime), NULL, N'admin', NULL)
INSERT [dbo].[data_set] ([dt_id], [dt_name], [ds_id], [type], [sql], [data_type], [sts], [tx_time], [up_time], [tx_op], [up_op], [order_by_str]) VALUES (7, N'系统日志', 107, N'rsdb', N'select * from sys_log', N'sql', N'1', NULL, CAST(N'2018-09-05T14:52:51.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[data_set] ([dt_id], [dt_name], [ds_id], [type], [sql], [data_type], [sts], [tx_time], [up_time], [tx_op], [up_op], [order_by_str]) VALUES (11, N'测试数据', 107, N'mysql', N'select * from chart_test', N'sql', N'1', NULL, CAST(N'2019-01-03T17:18:58.000' AS DateTime), NULL, N'admin', NULL)
INSERT [dbo].[data_set] ([dt_id], [dt_name], [ds_id], [type], [sql], [data_type], [sts], [tx_time], [up_time], [tx_op], [up_op], [order_by_str]) VALUES (12, N'dept_year', 121, N'rsdb', N'select * from dept_year', N'sql', N'1', CAST(N'2018-12-07T17:16:04.000' AS DateTime), CAST(N'2018-12-07T17:16:04.000' AS DateTime), N'admin', N'admin', NULL)
INSERT [dbo].[data_set] ([dt_id], [dt_name], [ds_id], [type], [sql], [data_type], [sts], [tx_time], [up_time], [tx_op], [up_op], [order_by_str]) VALUES (15, N'列表', 121, N'mysql', N'select * from demo_user', N'sql', N'1', CAST(N'2019-03-05T09:50:05.000' AS DateTime), CAST(N'2019-03-05T09:50:05.000' AS DateTime), N'admin', N'admin', NULL)
SET IDENTITY_INSERT [dbo].[data_set] OFF
SET IDENTITY_INSERT [dbo].[data_source] ON 

INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (107, N'MySql-24', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://128.1.13.24:3306/rdp_server?characterEncoding=utf8&useSSL=false&serverTimezone=UTC', N'root', N'dhccpass', N'MySql', N'0', N'1', NULL, CAST(N'2019-04-17T17:29:16.267' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (121, N'report_demo', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://128.1.13.24:3306/report_demo?characterEncoding=utf8&useSSL=false&serverTimezone=UTC', N'root', N'dhccpass', N'MySql', N'0', N'1', NULL, CAST(N'2019-03-25T16:27:34.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (123, N'cms_oracle', N'oracle', N'oracle', NULL, N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin:@128.1.13.22:1521:orcl', N'cmsii', N'cmsii', NULL, N'0', N'1', NULL, CAST(N'2019-02-20T18:08:33.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (131, N'Oracle1', N'rsdb', N'oracle', NULL, N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin:@//<host>:<port>/ServiceName', NULL, NULL, N'Oracle', N'1', N'1', CAST(N'2018-11-02T13:51:24.000' AS DateTime), CAST(N'2018-11-02T13:51:24.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (132, N'Json', N'file', N'Json', NULL, NULL, N'https://api.github.com/search/', NULL, NULL, N'Json', N'1', N'1', NULL, CAST(N'2018-11-06T16:15:21.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (133, N'PostgreSQL', N'rsdb', N'postgresql', NULL, N'org.postgresql.Driver', N'jdbc:postgresql://128.1.13.24:5432/postgres', N'postgres', N'postgres', N'PostgreSQL', N'1', N'1', CAST(N'2018-11-05T09:27:02.000' AS DateTime), CAST(N'2018-11-05T09:27:02.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (134, N'SQL Server 2005', N'rsdb', N'sqlserver', NULL, N'com.microsoft.sqlserver.jdbc.SQLServerDriver', N'jdbc:sqlserver://128.1.13.24:1433;DatabaseName=REPORT', N'REPORT', N'REPORT', N'SqlServer', N'0', N'1', NULL, CAST(N'2018-12-17T11:36:10.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (135, N'Db2', N'rsdb', N'db2', NULL, N'com.ibm.db2.jcc.DB2Driver', N'jdbc:db2://128.1.13.24:50000/REPORT', N'REPORT', N'REPORT', N'Db2 type2', N'1', N'1', NULL, CAST(N'2018-11-08T09:44:29.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (141, N'jsonaaa', N'json', N'json', NULL, NULL, N'https://api.github.com', NULL, NULL, N'Json', NULL, N'1', CAST(N'2018-11-09T14:59:32.000' AS DateTime), CAST(N'2018-11-09T14:59:32.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (146, N'MySql-test', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://128.1.20.33:3306/rdp_server', N'root', N'root', N'MySql', N'0', N'1', NULL, CAST(N'2018-11-14T16:29:52.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (148, N'天气', N'json', N'json', NULL, NULL, N'http://t.weather.sojson.com/api/weather/city/101030100', NULL, NULL, N'Json', NULL, N'1', NULL, CAST(N'2018-11-16T14:49:14.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (149, N'jsonlocal', N'json', N'json', NULL, NULL, N'http://localhost', N'admin', N'admin', N'Json', NULL, N'1', CAST(N'2018-11-19T09:17:33.000' AS DateTime), CAST(N'2018-11-19T09:17:33.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (150, N'Oracle2', N'rsdb', N'oracle', NULL, N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin://128.1.20.33:1521/orcl', N'zlxt', N'zlxt', N'Oracle', N'0', N'1', NULL, CAST(N'2019-03-23T09:08:47.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (151, N'jishiyu', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://localhost:3366/factor_platform?useUnicode=true&characterEncoding=utf-8&useSSL=true', N'factor', N'admin', N'MySql', N'1', N'1', NULL, CAST(N'2018-11-26T15:16:01.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (152, N'wangqing', N'rsdb', N'oracle', NULL, N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin:@128.1.13.22:1521:orcl', N'cmsii', N'cmsii', N'Oracle', N'1', N'1', NULL, CAST(N'2018-11-27T14:32:46.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (153, N'中文', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://128.1.13.24:3306/report_demo', N'root', N'dhccpass', N'MySql', N'1', N'1', CAST(N'2018-11-27T16:09:12.000' AS DateTime), CAST(N'2018-11-27T16:09:12.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (158, N'asdasd', N'jndi', N'mysql', NULL, NULL, N'asdasd', NULL, NULL, N'Jndi', N'1', N'1', CAST(N'2018-11-30T09:29:47.000' AS DateTime), CAST(N'2018-11-30T09:29:47.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (159, N'asdas22', N'jndi', N'mysql', NULL, NULL, N'asdasd', NULL, NULL, N'Jndi', N'1', N'1', CAST(N'2018-11-30T09:37:04.000' AS DateTime), CAST(N'2018-11-30T09:37:04.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (160, N'asdas22eee', N'jndi', N'mysql', NULL, NULL, N'qweqwe', NULL, NULL, N'Jndi', N'1', N'1', CAST(N'2018-11-30T09:37:39.000' AS DateTime), CAST(N'2018-11-30T09:37:39.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (161, N'jnreport_demo', N'jndi', N'mysql', NULL, NULL, N'java:comp/env/jdbc/report_demo', NULL, NULL, N'Jndi', N'1', N'1', NULL, CAST(N'2018-11-30T10:44:48.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (164, N'MYSQL', N'rsdb', N'mysql', NULL, N'com.mysql.jdbc.Driver', N'jdbc:mysql://localhost:3366/factor_platform?characterEncoding=utf8&useSSL=false&serverTimezone=UTC', N'factor', N'admin', N'MySql', N'1', N'1', NULL, CAST(N'2018-12-18T13:43:01.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (166, N'local', N'json', N'json', NULL, NULL, N'http://localhost/', N'admin', N'admin', N'Json', NULL, N'1', CAST(N'2018-12-14T16:44:03.000' AS DateTime), CAST(N'2018-12-14T16:44:03.000' AS DateTime), N'admin', N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (167, N'ms_report', N'rsdb', N'sqlserver', NULL, N'com.microsoft.sqlserver.jdbc.SQLServerDriver', N'jdbc:sqlserver://128.1.13.24:1433;DatabaseName=report_demo', N'sa', N'sa', N'SqlServer', N'0', N'1', NULL, CAST(N'2018-12-26T11:45:56.000' AS DateTime), NULL, N'admin')
INSERT [dbo].[data_source] ([id], [name], [model], [type], [version], [driver], [addr], [usr], [password], [icon], [readonly], [sts], [tx_time], [up_time], [tx_op], [up_op]) VALUES (168, N'rdp_test', N'rsdb', N'oracle', NULL, N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin:@128.1.20.33:1521:orcl', N'rdp_admin', N'rdp_admin', N'Oracle', N'1', N'1', NULL, CAST(N'2019-03-07T11:27:03.000' AS DateTime), NULL, N'admin')
SET IDENTITY_INSERT [dbo].[data_source] OFF
SET IDENTITY_INSERT [dbo].[db_type] ON 

INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (101, N'MySql', N'rsdb', N'mysql', N'com.mysql.jdbc.Driver', N'jdbc:mysql://<host>:<port>/<database_name>', N'1', N'MySql')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (201, N'Oracle', N'rsdb', N'oracle', N'oracle.jdbc.driver.OracleDriver', N'jdbc:oracle:thin:@<host>:<port>:<ServiceName>', N'1', N'Oracle')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (301, N'Db2 type2', N'rsdb', N'db2', N'com.ibm.db2.jcc.DB2Driver', N'jdbc:db2:<database_name>', N'1', N'Db2 type2')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (302, N'Db2 type4', N'rsdb', N'db2', N'com.ibm.db2.jcc.DB2Driver', N'jdbc:db2://<host>[:<port>]/<database_name>', N'1', N'Db2 type4')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (401, N'SQL Server 2000', N'rsdb', N'sqlserver', N'com.microsoft.jdbc.sqlserver.SQLServerDriver', N'jdbc:microsoft:sqlserver://:', N'0', N'SqlServer')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (402, N'SQL Server 2005', N'rsdb', N'sqlserver', N'com.microsoft.sqlserver.jdbc.SQLServerDriver', N'jdbc:sqlserver://<server_name>:<port>;DatabaseName=<DatabaseName>', N'1', N'SqlServer')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (501, N'Sybase', N'rsdb', N'sysbase', N'com.sybase.jdbc3.jdbc.SybDriver', N'jdbc:sybase:Tds::', N'0', N'Sybase')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (601, N'PostgreSQL', N'rsdb', N'postgresql', N'org.postgresql.Driver', N'jdbc:postgresql://:/', N'1', N'PostgreSQL')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (701, N'SQLite', N'rsdb', N'sqlite', N'org.sqlite.JDBC', N'jdbc:sqlite:D:\\xxxdatabase.db', N'0', N'SQLite')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (801, N'MongoDB', N'nosqldb', N'mongodb', NULL, N'mongodb://userName:password@host/?authSource=databaseName&amp;ssh=false', N'0', N'MongoDB')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (901, N'Xml', N'file', N'xml', NULL, NULL, N'0', N'Xml')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (902, N'API请求', N'file', N'json', NULL, NULL, N'1', N'Json')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (903, N'Csv', N'file', N'csv', NULL, NULL, N'0', N'Csv')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (904, N'Excel', N'file', N'excel', NULL, NULL, N'0', N'Excel')
INSERT [dbo].[db_type] ([id], [name], [model], [type], [driver], [addr_demo], [sts], [icon]) VALUES (1001, N'JNDI', N'jndi', N'jndi', N'', N'', N'1', N'Jndi')
SET IDENTITY_INSERT [dbo].[db_type] OFF
INSERT [dbo].[qrtz_cron_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [CRON_EXPRESSION], [TIME_ZONE_ID]) VALUES (N'RdpScheduler', N'TASK_1', N'DEFAULT', N'0 0/30 * * * ?', N'Asia/Shanghai')
INSERT [dbo].[qrtz_cron_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [CRON_EXPRESSION], [TIME_ZONE_ID]) VALUES (N'RdpScheduler', N'TASK_2', N'DEFAULT', N'0 0/1 * * * ?', N'Asia/Shanghai')
INSERT [dbo].[qrtz_job_details] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [JOB_CLASS_NAME], [IS_DURABLE], [IS_NONCONCURRENT], [IS_UPDATE_DATA], [REQUESTS_RECOVERY], [JOB_DATA]) VALUES (N'RdpScheduler', N'TASK_1', N'DEFAULT', NULL, N'io.report.modules.job.utils.ScheduleJob', N'0', N'0', N'0', N'0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E7265706F72742E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800)
INSERT [dbo].[qrtz_job_details] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [JOB_CLASS_NAME], [IS_DURABLE], [IS_NONCONCURRENT], [IS_UPDATE_DATA], [REQUESTS_RECOVERY], [JOB_DATA]) VALUES (N'RdpScheduler', N'TASK_2', N'DEFAULT', NULL, N'io.report.modules.job.utils.ScheduleJob', N'0', N'0', N'0', N'0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E7265706F72742E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000D3020302F31202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800)
INSERT [dbo].[qrtz_locks] ([SCHED_NAME], [LOCK_NAME]) VALUES (N'RdpScheduler', N'STATE_ACCESS')
INSERT [dbo].[qrtz_locks] ([SCHED_NAME], [LOCK_NAME]) VALUES (N'RdpScheduler', N'TRIGGER_ACCESS')
INSERT [dbo].[qrtz_scheduler_state] ([SCHED_NAME], [INSTANCE_NAME], [LAST_CHECKIN_TIME], [CHECKIN_INTERVAL]) VALUES (N'RdpScheduler', N'jzh1538095544583', 1538103904271, 15000)
INSERT [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [NEXT_FIRE_TIME], [PREV_FIRE_TIME], [PRIORITY], [TRIGGER_STATE], [TRIGGER_TYPE], [START_TIME], [END_TIME], [CALENDAR_NAME], [MISFIRE_INSTR], [JOB_DATA]) VALUES (N'RdpScheduler', N'TASK_1', N'DEFAULT', N'TASK_1', N'DEFAULT', NULL, 1535688000000, -1, 5, N'PAUSED', N'CRON', 1535686297000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E7265706F72742E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800)
INSERT [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [NEXT_FIRE_TIME], [PREV_FIRE_TIME], [PRIORITY], [TRIGGER_STATE], [TRIGGER_TYPE], [START_TIME], [END_TIME], [CALENDAR_NAME], [MISFIRE_INSTR], [JOB_DATA]) VALUES (N'RdpScheduler', N'TASK_2', N'DEFAULT', N'TASK_2', N'DEFAULT', NULL, 1535686320000, -1, 5, N'PAUSED', N'CRON', 1535686298000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E7265706F72742E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000D3020302F31202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800)
SET IDENTITY_INSERT [dbo].[schedule_job] ON 

INSERT [dbo].[schedule_job] ([job_id], [bean_name], [method_name], [params], [cron_expression], [status], [remark], [create_time]) VALUES (1, N'testTask', N'test', N'renren', N'0 0/30 * * * ?', 1, N'有参数测试', CAST(N'2016-12-01T23:16:46.000' AS DateTime))
INSERT [dbo].[schedule_job] ([job_id], [bean_name], [method_name], [params], [cron_expression], [status], [remark], [create_time]) VALUES (2, N'testTask', N'test2', NULL, N'0 0/1 * * * ?', 1, N'无参数测试', CAST(N'2016-12-03T14:55:56.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[schedule_job] OFF
SET IDENTITY_INSERT [dbo].[schedule_job_log] ON 

INSERT [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [method_name], [params], [status], [error], [times], [create_time]) VALUES (69, 1, N'testTask', N'test', N'renren', 0, NULL, 1086, CAST(N'2018-09-05T13:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[schedule_job_log] OFF
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110000', N'北京市', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110100', N'市辖区', N'2', N'110000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110101', N'东城区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110102', N'西城区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110103', N'崇文区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110104', N'宣武区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110105', N'朝阳区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110106', N'丰台区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110107', N'石景山区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110108', N'海淀区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110109', N'门头沟区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110111', N'房山区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110112', N'通州区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110113', N'顺义区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110114', N'昌平区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110115', N'大兴区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110116', N'怀柔区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110117', N'平谷区', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110228', N'密云县', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'110229', N'延庆县', N'2', N'110000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120000', N'天津市', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120100', N'市辖区', N'2', N'120000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120101', N'和平区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120102', N'河东区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120103', N'河西区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120104', N'南开区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120105', N'河北区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120106', N'红桥区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120107', N'塘沽区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120108', N'汉沽区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120109', N'大港区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120110', N'东丽区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120111', N'西青区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120112', N'津南区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120113', N'北辰区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120114', N'武清区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120115', N'宝坻区', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120221', N'宁河县', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120223', N'静海县', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'120225', N'蓟县', N'2', N'120000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130000', N'河北省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130100', N'石家庄市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130101', N'市辖区', N'3', N'130100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130102', N'长安区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130103', N'桥东区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130104', N'桥西区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130105', N'新华区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130107', N'井陉矿区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130108', N'裕华区', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130121', N'井陉县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130123', N'正定县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130124', N'栾城县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130125', N'行唐县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130126', N'灵寿县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130127', N'高邑县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130128', N'深泽县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130129', N'赞皇县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130130', N'无极县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130131', N'平山县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130132', N'元氏县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130133', N'赵县', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130181', N'辛集市', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130182', N'藁城市', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130183', N'晋州市', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130184', N'新乐市', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130185', N'鹿泉市', N'3', N'130100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130200', N'唐山市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130201', N'市辖区', N'3', N'130200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130202', N'路南区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130203', N'路北区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130204', N'古冶区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130205', N'开平区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130207', N'丰南区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130208', N'丰润区', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130223', N'滦县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130224', N'滦南县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130225', N'乐亭县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130227', N'迁西县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130229', N'玉田县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130230', N'唐海县', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130281', N'遵化市', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130283', N'迁安市', N'3', N'130200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130300', N'秦皇岛市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130301', N'市辖区', N'3', N'130300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130302', N'海港区', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130303', N'山海关区', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130304', N'北戴河区', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130321', N'青龙满族自治县', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130322', N'昌黎县', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130323', N'抚宁县', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130324', N'卢龙县', N'3', N'130300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130400', N'邯郸市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130401', N'市辖区', N'3', N'130400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130402', N'邯山区', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130403', N'丛台区', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130404', N'复兴区', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130406', N'峰峰矿区', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130421', N'邯郸县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130423', N'临漳县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130424', N'成安县', N'3', N'130400', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130425', N'大名县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130426', N'涉县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130427', N'磁县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130428', N'肥乡县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130429', N'永年县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130430', N'邱县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130431', N'鸡泽县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130432', N'广平县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130433', N'馆陶县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130434', N'魏县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130435', N'曲周县', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130481', N'武安市', N'3', N'130400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130500', N'邢台市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130501', N'市辖区', N'3', N'130500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130502', N'桥东区', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130503', N'桥西区', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130521', N'邢台县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130522', N'临城县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130523', N'内丘县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130524', N'柏乡县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130525', N'隆尧县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130526', N'任县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130527', N'南和县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130528', N'宁晋县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130529', N'巨鹿县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130530', N'新河县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130531', N'广宗县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130532', N'平乡县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130533', N'威县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130534', N'清河县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130535', N'临西县', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130581', N'南宫市', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130582', N'沙河市', N'3', N'130500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130600', N'保定市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130601', N'市辖区', N'3', N'130600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130602', N'新市区', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130603', N'北市区', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130604', N'南市区', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130621', N'满城县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130622', N'清苑县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130623', N'涞水县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130624', N'阜平县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130625', N'徐水县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130626', N'定兴县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130627', N'唐县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130628', N'高阳县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130629', N'容城县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130630', N'涞源县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130631', N'望都县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130632', N'安新县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130633', N'易县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130634', N'曲阳县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130635', N'蠡县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130636', N'顺平县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130637', N'博野县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130638', N'雄县', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130681', N'涿州市', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130682', N'定州市', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130683', N'安国市', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130684', N'高碑店市', N'3', N'130600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130700', N'张家口市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130701', N'市辖区', N'3', N'130700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130702', N'桥东区', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130703', N'桥西区', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130705', N'宣化区', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130706', N'下花园区', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130721', N'宣化县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130722', N'张北县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130723', N'康保县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130724', N'沽源县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130725', N'尚义县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130726', N'蔚县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130727', N'阳原县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130728', N'怀安县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130729', N'万全县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130730', N'怀来县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130731', N'涿鹿县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130732', N'赤城县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130733', N'崇礼县', N'3', N'130700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130800', N'承德市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130801', N'市辖区', N'3', N'130800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130802', N'双桥区', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130803', N'双滦区', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130804', N'鹰手营子矿区', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130821', N'承德县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130822', N'兴隆县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130823', N'平泉县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130824', N'滦平县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130825', N'隆化县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130826', N'丰宁满族自治县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130827', N'宽城满族自治县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130828', N'围场满族蒙古族自治县', N'3', N'130800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130900', N'沧州市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130901', N'市辖区', N'3', N'130900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130902', N'新华区', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130903', N'运河区', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130921', N'沧县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130922', N'青县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130923', N'东光县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130924', N'海兴县', N'3', N'130900', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130925', N'盐山县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130926', N'肃宁县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130927', N'南皮县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130928', N'吴桥县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130929', N'献县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130930', N'孟村回族自治县', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130981', N'泊头市', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130982', N'任丘市', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130983', N'黄骅市', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'130984', N'河间市', N'3', N'130900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131000', N'廊坊市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131001', N'市辖区', N'3', N'131000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131002', N'安次区', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131003', N'广阳区', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131022', N'固安县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131023', N'永清县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131024', N'香河县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131025', N'大城县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131026', N'文安县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131028', N'大厂回族自治县', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131081', N'霸州市', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131082', N'三河市', N'3', N'131000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131100', N'衡水市', N'2', N'130000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131101', N'市辖区', N'3', N'131100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131102', N'桃城区', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131121', N'枣强县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131122', N'武邑县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131123', N'武强县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131124', N'饶阳县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131125', N'安平县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131126', N'故城县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131127', N'景县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131128', N'阜城县', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131181', N'冀州市', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'131182', N'深州市', N'3', N'131100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140000', N'山西省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140100', N'太原市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140101', N'市辖区', N'3', N'140100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140105', N'小店区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140106', N'迎泽区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140107', N'杏花岭区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140108', N'尖草坪区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140109', N'万柏林区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140110', N'晋源区', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140121', N'清徐县', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140122', N'阳曲县', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140123', N'娄烦县', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140181', N'古交市', N'3', N'140100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140200', N'大同市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140201', N'市辖区', N'3', N'140200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140202', N'城区', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140203', N'矿区', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140211', N'南郊区', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140212', N'新荣区', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140221', N'阳高县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140222', N'天镇县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140223', N'广灵县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140224', N'灵丘县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140225', N'浑源县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140226', N'左云县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140227', N'大同县', N'3', N'140200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140300', N'阳泉市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140301', N'市辖区', N'3', N'140300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140302', N'城区', N'3', N'140300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140303', N'矿区', N'3', N'140300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140311', N'郊区', N'3', N'140300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140321', N'平定县', N'3', N'140300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140322', N'盂县', N'3', N'140300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140400', N'长治市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140401', N'市辖区', N'3', N'140400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140402', N'城区', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140411', N'郊区', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140421', N'长治县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140423', N'襄垣县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140424', N'屯留县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140425', N'平顺县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140426', N'黎城县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140427', N'壶关县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140428', N'长子县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140429', N'武乡县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140430', N'沁县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140431', N'沁源县', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140481', N'潞城市', N'3', N'140400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140500', N'晋城市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140501', N'市辖区', N'3', N'140500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140502', N'城区', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140521', N'沁水县', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140522', N'阳城县', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140524', N'陵川县', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140525', N'泽州县', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140581', N'高平市', N'3', N'140500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140600', N'朔州市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140601', N'市辖区', N'3', N'140600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140602', N'朔城区', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140603', N'平鲁区', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140621', N'山阴县', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140622', N'应县', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140623', N'右玉县', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140624', N'怀仁县', N'3', N'140600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140700', N'晋中市', N'2', N'140000', N'1', NULL)
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140701', N'市辖区', N'3', N'140700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140702', N'榆次区', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140721', N'榆社县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140722', N'左权县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140723', N'和顺县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140724', N'昔阳县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140725', N'寿阳县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140726', N'太谷县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140727', N'祁县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140728', N'平遥县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140729', N'灵石县', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140781', N'介休市', N'3', N'140700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140800', N'运城市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140801', N'市辖区', N'3', N'140800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140802', N'盐湖区', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140821', N'临猗县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140822', N'万荣县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140823', N'闻喜县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140824', N'稷山县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140825', N'新绛县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140826', N'绛县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140827', N'垣曲县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140828', N'夏县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140829', N'平陆县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140830', N'芮城县', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140881', N'永济市', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140882', N'河津市', N'3', N'140800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140900', N'忻州市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140901', N'市辖区', N'3', N'140900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140902', N'忻府区', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140921', N'定襄县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140922', N'五台县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140923', N'代县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140924', N'繁峙县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140925', N'宁武县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140926', N'静乐县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140927', N'神池县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140928', N'五寨县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140929', N'岢岚县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140930', N'河曲县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140931', N'保德县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140932', N'偏关县', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'140981', N'原平市', N'3', N'140900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141000', N'临汾市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141001', N'市辖区', N'3', N'141000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141002', N'尧都区', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141021', N'曲沃县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141022', N'翼城县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141023', N'襄汾县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141024', N'洪洞县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141025', N'古县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141026', N'安泽县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141027', N'浮山县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141028', N'吉县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141029', N'乡宁县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141030', N'大宁县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141031', N'隰县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141032', N'永和县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141033', N'蒲县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141034', N'汾西县', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141081', N'侯马市', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141082', N'霍州市', N'3', N'141000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141100', N'吕梁市', N'2', N'140000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141101', N'市辖区', N'3', N'141100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141102', N'离石区', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141121', N'文水县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141122', N'交城县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141123', N'兴县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141124', N'临县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141125', N'柳林县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141126', N'石楼县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141127', N'岚县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141128', N'方山县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141129', N'中阳县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141130', N'交口县', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141181', N'孝义市', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'141182', N'汾阳市', N'3', N'141100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150000', N'内蒙古自治区', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150100', N'呼和浩特市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150101', N'市辖区', N'3', N'150100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150102', N'新城区', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150103', N'回民区', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150104', N'玉泉区', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150105', N'赛罕区', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150121', N'土默特左旗', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150122', N'托克托县', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150123', N'和林格尔县', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150124', N'清水河县', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150125', N'武川县', N'3', N'150100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150200', N'包头市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150201', N'市辖区', N'3', N'150200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150202', N'东河区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150203', N'昆都仑区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150204', N'青山区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150205', N'石拐区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150206', N'白云矿区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150207', N'九原区', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150221', N'土默特右旗', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150222', N'固阳县', N'3', N'150200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150223', N'达尔罕茂明安联合旗', N'3', N'150200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150300', N'乌海市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150301', N'市辖区', N'3', N'150300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150302', N'海勃湾区', N'3', N'150300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150303', N'海南区', N'3', N'150300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150304', N'乌达区', N'3', N'150300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150400', N'赤峰市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150401', N'市辖区', N'3', N'150400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150402', N'红山区', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150403', N'元宝山区', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150404', N'松山区', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150421', N'阿鲁科尔沁旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150422', N'巴林左旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150423', N'巴林右旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150424', N'林西县', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150425', N'克什克腾旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150426', N'翁牛特旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150428', N'喀喇沁旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150429', N'宁城县', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150430', N'敖汉旗', N'3', N'150400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150500', N'通辽市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150501', N'市辖区', N'3', N'150500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150502', N'科尔沁区', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150521', N'科尔沁左翼中旗', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150522', N'科尔沁左翼后旗', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150523', N'开鲁县', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150524', N'库伦旗', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150525', N'奈曼旗', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150526', N'扎鲁特旗', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150581', N'霍林郭勒市', N'3', N'150500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150600', N'鄂尔多斯市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150601', N'市辖区', N'3', N'150600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150602', N'  东胜区', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150621', N'达拉特旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150622', N'准格尔旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150623', N'鄂托克前旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150624', N'鄂托克旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150625', N'杭锦旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150626', N'乌审旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150627', N'伊金霍洛旗', N'3', N'150600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150700', N'呼伦贝尔市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150701', N'市辖区', N'3', N'150700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150702', N'海拉尔区', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150721', N'阿荣旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150722', N'莫力达瓦达斡尔族自治旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150723', N'鄂伦春自治旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150724', N'鄂温克族自治旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150725', N'陈巴尔虎旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150726', N'新巴尔虎左旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150727', N'新巴尔虎右旗', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150781', N'满洲里市', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150782', N'牙克石市', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150783', N'扎兰屯市', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150784', N'额尔古纳市', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150785', N'根河市', N'3', N'150700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150800', N'巴彦淖尔市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150801', N'市辖区', N'3', N'150800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150802', N'临河区', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150821', N'五原县', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150822', N'磴口县', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150823', N'乌拉特前旗', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150824', N'乌拉特中旗', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150825', N'乌拉特后旗', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150826', N'杭锦后旗', N'3', N'150800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150900', N'乌兰察布市', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150901', N'市辖区', N'3', N'150900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150902', N'集宁区', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150921', N'卓资县', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150922', N'化德县', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150923', N'商都县', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150924', N'兴和县', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150925', N'凉城县', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150926', N'察哈尔右翼前旗', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150927', N'察哈尔右翼中旗', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150928', N'察哈尔右翼后旗', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150929', N'四子王旗', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'150981', N'丰镇市', N'3', N'150900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152200', N'兴安盟', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152201', N'乌兰浩特市', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152202', N'阿尔山市', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152221', N'科尔沁右翼前旗', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152222', N'科尔沁右翼中旗', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152223', N'扎赉特旗', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152224', N'突泉县', N'3', N'152200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152500', N'锡林郭勒盟', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152501', N'二连浩特市', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152502', N'锡林浩特市', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152522', N'阿巴嘎旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152523', N'苏尼特左旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152524', N'苏尼特右旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152525', N'东乌珠穆沁旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152526', N'西乌珠穆沁旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152527', N'太仆寺旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152528', N'镶黄旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152529', N'正镶白旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152530', N'正蓝旗', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152531', N'多伦县', N'3', N'152500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152900', N'阿拉善盟', N'2', N'150000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152921', N'阿拉善左旗', N'3', N'152900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152922', N'阿拉善右旗', N'3', N'152900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'152923', N'额济纳旗', N'3', N'152900', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210000', N'辽宁省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210100', N'沈阳市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210101', N'市辖区', N'3', N'210100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210102', N'和平区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210103', N'沈河区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210104', N'大东区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210105', N'皇姑区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210106', N'铁西区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210111', N'苏家屯区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210112', N'东陵区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210113', N'沈北新区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210114', N'于洪区', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210122', N'辽中县', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210123', N'康平县', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210124', N'法库县', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210181', N'新民市', N'3', N'210100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210200', N'大连市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210201', N'市辖区', N'3', N'210200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210202', N'中山区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210203', N'西岗区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210204', N'沙河口区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210211', N'甘井子区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210212', N'旅顺口区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210213', N'金州区', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210224', N'长海县', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210281', N'瓦房店市', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210282', N'普兰店市', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210283', N'庄河市', N'3', N'210200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210300', N'鞍山市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210301', N'市辖区', N'3', N'210300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210302', N'铁东区', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210303', N'铁西区', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210304', N'立山区', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210311', N'千山区', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210321', N'台安县', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210323', N'岫岩满族自治县', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210381', N'海城市', N'3', N'210300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210400', N'抚顺市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210401', N'市辖区', N'3', N'210400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210402', N'新抚区', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210403', N'东洲区', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210404', N'望花区', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210411', N'顺城区', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210421', N'抚顺县', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210422', N'新宾满族自治县', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210423', N'清原满族自治县', N'3', N'210400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210500', N'本溪市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210501', N'市辖区', N'3', N'210500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210502', N'平山区', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210503', N'溪湖区', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210504', N'明山区', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210505', N'南芬区', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210521', N'本溪满族自治县', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210522', N'桓仁满族自治县', N'3', N'210500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210600', N'丹东市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210601', N'市辖区', N'3', N'210600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210602', N'元宝区', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210603', N'振兴区', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210604', N'振安区', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210624', N'宽甸满族自治县', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210681', N'东港市', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210682', N'凤城市', N'3', N'210600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210700', N'锦州市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210701', N'市辖区', N'3', N'210700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210702', N'古塔区', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210703', N'凌河区', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210711', N'太和区', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210726', N'黑山县', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210727', N'义县', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210781', N'凌海市', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210782', N'北镇市', N'3', N'210700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210800', N'营口市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210801', N'市辖区', N'3', N'210800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210802', N'站前区', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210803', N'西市区', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210804', N'鲅鱼圈区', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210811', N'老边区', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210881', N'盖州市', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210882', N'大石桥市', N'3', N'210800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210900', N'阜新市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210901', N'市辖区', N'3', N'210900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210902', N'海州区', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210903', N'新邱区', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210904', N'太平区', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210905', N'清河门区', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210911', N'细河区', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210921', N'阜新蒙古族自治县', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'210922', N'彰武县', N'3', N'210900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211000', N'辽阳市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211001', N'市辖区', N'3', N'211000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211002', N'白塔区', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211003', N'文圣区', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211004', N'宏伟区', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211005', N'弓长岭区', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211011', N'太子河区', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211021', N'辽阳县', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211081', N'灯塔市', N'3', N'211000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211100', N'盘锦市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211101', N'市辖区', N'3', N'211100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211102', N'双台子区', N'3', N'211100', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211103', N'兴隆台区', N'3', N'211100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211121', N'大洼县', N'3', N'211100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211122', N'盘山县', N'3', N'211100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211200', N'铁岭市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211201', N'市辖区', N'3', N'211200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211202', N'银州区', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211204', N'清河区', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211221', N'铁岭县', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211223', N'西丰县', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211224', N'昌图县', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211281', N'调兵山市', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211282', N'开原市', N'3', N'211200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211300', N'朝阳市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211301', N'市辖区', N'3', N'211300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211302', N'双塔区', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211303', N'龙城区', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211321', N'朝阳县', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211322', N'建平县', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211324', N'喀喇沁左翼蒙古族自治县', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211381', N'北票市', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211382', N'凌源市', N'3', N'211300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211400', N'葫芦岛市', N'2', N'210000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211401', N'市辖区', N'3', N'211400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211402', N'连山区', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211403', N'龙港区', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211404', N'南票区', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211421', N'绥中县', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211422', N'建昌县', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'211481', N'兴城市', N'3', N'211400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220000', N'吉林省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220100', N'长春市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220101', N'市辖区', N'3', N'220100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220102', N'南关区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220103', N'宽城区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220104', N'朝阳区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220105', N'二道区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220106', N'绿园区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220112', N'双阳区', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220122', N'农安县', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220181', N'九台市', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220182', N'榆树市', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220183', N'德惠市', N'3', N'220100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220200', N'吉林市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220201', N'市辖区', N'3', N'220200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220202', N'昌邑区', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220203', N'龙潭区', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220204', N'船营区', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220211', N'丰满区', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220221', N'永吉县', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220281', N'蛟河市', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220282', N'桦甸市', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220283', N'舒兰市', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220284', N'磐石市', N'3', N'220200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220300', N'四平市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220301', N'市辖区', N'3', N'220300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220302', N'铁西区', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220303', N'铁东区', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220322', N'梨树县', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220323', N'伊通满族自治县', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220381', N'公主岭市', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220382', N'双辽市', N'3', N'220300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220400', N'辽源市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220401', N'市辖区', N'3', N'220400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220402', N'龙山区', N'3', N'220400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220403', N'西安区', N'3', N'220400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220421', N'东丰县', N'3', N'220400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220422', N'东辽县', N'3', N'220400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220500', N'通化市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220501', N'市辖区', N'3', N'220500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220502', N'东昌区', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220503', N'二道江区', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220521', N'通化县', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220523', N'辉南县', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220524', N'柳河县', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220581', N'梅河口市', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220582', N'集安市', N'3', N'220500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220600', N'白山市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220601', N'市辖区', N'3', N'220600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220602', N'八道江区', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220605', N'  江源区', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220621', N'抚松县', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220622', N'靖宇县', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220623', N'长白朝鲜族自治县', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220681', N'临江市', N'3', N'220600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220700', N'松原市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220701', N'市辖区', N'3', N'220700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220702', N'宁江区', N'3', N'220700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220721', N'前郭尔罗斯蒙古族自治县', N'3', N'220700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220722', N'长岭县', N'3', N'220700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220723', N'乾安县', N'3', N'220700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220724', N'扶余县', N'3', N'220700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220800', N'白城市', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220801', N'市辖区', N'3', N'220800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220802', N'洮北区', N'3', N'220800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220821', N'镇赉县', N'3', N'220800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220822', N'通榆县', N'3', N'220800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220881', N'洮南市', N'3', N'220800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'220882', N'大安市', N'3', N'220800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222400', N'延边朝鲜族自治州', N'2', N'220000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222401', N'延吉市', N'3', N'222400', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222402', N'图们市', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222403', N'敦化市', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222404', N'珲春市', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222405', N'龙井市', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222406', N'和龙市', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222424', N'汪清县', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'222426', N'安图县', N'3', N'222400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230000', N'黑龙江省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230100', N'哈尔滨市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230101', N'市辖区', N'3', N'230100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230102', N'道里区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230103', N'南岗区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230104', N'道外区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230108', N'平房区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230109', N'松北区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230110', N'香坊区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230111', N'呼兰区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230112', N'阿城区', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230123', N'依兰县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230124', N'方正县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230125', N'宾县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230126', N'巴彦县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230127', N'木兰县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230128', N'通河县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230129', N'延寿县', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230182', N'双城市', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230183', N'尚志市', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230184', N'五常市', N'3', N'230100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230200', N'齐齐哈尔市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230201', N'市辖区', N'3', N'230200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230202', N'龙沙区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230203', N'建华区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230204', N'铁锋区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230205', N'昂昂溪区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230206', N'富拉尔基区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230207', N'碾子山区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230208', N'梅里斯达斡尔族区', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230221', N'龙江县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230223', N'依安县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230224', N'泰来县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230225', N'甘南县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230227', N'富裕县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230229', N'克山县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230230', N'克东县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230231', N'拜泉县', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230281', N'讷河市', N'3', N'230200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230300', N'鸡西市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230301', N'市辖区', N'3', N'230300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230302', N'鸡冠区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230303', N'恒山区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230304', N'滴道区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230305', N'梨树区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230306', N'城子河区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230307', N'麻山区', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230321', N'鸡东县', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230381', N'虎林市', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230382', N'密山市', N'3', N'230300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230400', N'鹤岗市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230401', N'市辖区', N'3', N'230400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230402', N'向阳区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230403', N'工农区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230404', N'南山区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230405', N'兴安区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230406', N'东山区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230407', N'兴山区', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230421', N'萝北县', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230422', N'绥滨县', N'3', N'230400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230500', N'双鸭山市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230501', N'市辖区', N'3', N'230500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230502', N'尖山区', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230503', N'岭东区', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230505', N'四方台区', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230506', N'宝山区', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230521', N'集贤县', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230522', N'友谊县', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230523', N'宝清县', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230524', N'饶河县', N'3', N'230500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230600', N'大庆市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230601', N'市辖区', N'3', N'230600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230602', N'萨尔图区', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230603', N'龙凤区', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230604', N'让胡路区', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230605', N'红岗区', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230606', N'大同区', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230621', N'肇州县', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230622', N'肇源县', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230623', N'林甸县', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230624', N'杜尔伯特蒙古族自治县', N'3', N'230600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230700', N'伊春市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230701', N'市辖区', N'3', N'230700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230702', N'伊春区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230703', N'南岔区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230704', N'友好区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230705', N'西林区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230706', N'翠峦区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230707', N'新青区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230708', N'美溪区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230709', N'金山屯区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230710', N'五营区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230711', N'乌马河区', N'3', N'230700', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230712', N'汤旺河区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230713', N'带岭区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230714', N'乌伊岭区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230715', N'红星区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230716', N'上甘岭区', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230722', N'嘉荫县', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230781', N'铁力市', N'3', N'230700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230800', N'佳木斯市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230801', N'市辖区', N'3', N'230800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230803', N'向阳区', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230804', N'前进区', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230805', N'东风区', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230811', N'郊区', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230822', N'桦南县', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230826', N'桦川县', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230828', N'汤原县', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230833', N'抚远县', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230881', N'同江市', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230882', N'富锦市', N'3', N'230800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230900', N'七台河市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230901', N'市辖区', N'3', N'230900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230902', N'新兴区', N'3', N'230900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230903', N'桃山区', N'3', N'230900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230904', N'茄子河区', N'3', N'230900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'230921', N'勃利县', N'3', N'230900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231000', N'牡丹江市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231001', N'市辖区', N'3', N'231000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231002', N'东安区', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231003', N'阳明区', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231004', N'爱民区', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231005', N'西安区', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231024', N'东宁县', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231025', N'林口县', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231081', N'绥芬河市', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231083', N'海林市', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231084', N'宁安市', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231085', N'穆棱市', N'3', N'231000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231100', N'黑河市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231101', N'市辖区', N'3', N'231100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231102', N'爱辉区', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231121', N'嫩江县', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231123', N'逊克县', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231124', N'孙吴县', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231181', N'北安市', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231182', N'五大连池市', N'3', N'231100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231200', N'绥化市', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231201', N'市辖区', N'3', N'231200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231202', N'北林区', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231221', N'望奎县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231222', N'兰西县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231223', N'青冈县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231224', N'庆安县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231225', N'明水县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231226', N'绥棱县', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231281', N'安达市', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231282', N'肇东市', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'231283', N'海伦市', N'3', N'231200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232700', N'大兴安岭地区', N'2', N'230000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232701', N'加格达奇区', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232702', N'松岭区', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232703', N'新林区', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232704', N'呼中区', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232721', N'呼玛县', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232722', N'塔河县', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'232723', N'漠河县', N'3', N'232700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310000', N'上海市', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310100', N'市辖区', N'2', N'310000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310101', N'黄浦区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310103', N'卢湾区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310104', N'徐汇区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310105', N'长宁区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310106', N'静安区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310107', N'普陀区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310108', N'闸北区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310109', N'虹口区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310110', N'杨浦区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310112', N'闵行区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310113', N'宝山区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310114', N'嘉定区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310115', N'浦东新区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310116', N'金山区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310117', N'松江区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310118', N'青浦区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310119', N'南汇区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310120', N'奉贤区', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'310230', N'崇明县', N'2', N'310000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320000', N'江苏省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320100', N'南京市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320101', N'市辖区', N'3', N'320100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320102', N'玄武区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320103', N'白下区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320104', N'秦淮区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320105', N'建邺区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320106', N'鼓楼区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320107', N'下关区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320111', N'浦口区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320113', N'栖霞区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320114', N'雨花台区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320115', N'江宁区', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320116', N'六合区', N'3', N'320100', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320124', N'溧水县', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320125', N'高淳县', N'3', N'320100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320200', N'无锡市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320201', N'市辖区', N'3', N'320200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320202', N'崇安区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320203', N'南长区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320204', N'北塘区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320205', N'锡山区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320206', N'惠山区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320211', N'滨湖区', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320281', N'江阴市', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320282', N'宜兴市', N'3', N'320200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320300', N'徐州市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320301', N'市辖区', N'3', N'320300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320302', N'鼓楼区', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320303', N'云龙区', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320304', N'九里区', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320305', N'贾汪区', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320311', N'泉山区', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320321', N'丰县', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320322', N'沛县', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320323', N'铜山县', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320324', N'睢宁县', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320381', N'新沂市', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320382', N'邳州市', N'3', N'320300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320400', N'常州市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320401', N'市辖区', N'3', N'320400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320402', N'天宁区', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320404', N'钟楼区', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320405', N'戚墅堰区', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320411', N'新北区', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320412', N'武进区', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320481', N'溧阳市', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320482', N'金坛市', N'3', N'320400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320500', N'苏州市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320501', N'市辖区', N'3', N'320500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320502', N'沧浪区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320503', N'平江区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320504', N'金阊区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320505', N'虎丘区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320506', N'吴中区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320507', N'相城区', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320581', N'常熟市', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320582', N'张家港市', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320583', N'昆山市', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320584', N'吴江市', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320585', N'太仓市', N'3', N'320500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320600', N'南通市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320601', N'市辖区', N'3', N'320600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320602', N'崇川区', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320611', N'港闸区', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320621', N'海安县', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320623', N'如东县', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320681', N'启东市', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320682', N'如皋市', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320683', N'通州市', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320684', N'海门市', N'3', N'320600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320700', N'连云港市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320701', N'市辖区', N'3', N'320700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320703', N'连云区', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320705', N'新浦区', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320706', N'海州区', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320721', N'赣榆县', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320722', N'东海县', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320723', N'灌云县', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320724', N'灌南县', N'3', N'320700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320800', N'淮安市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320801', N'市辖区', N'3', N'320800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320802', N'清河区', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320803', N'楚州区', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320804', N'淮阴区', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320811', N'清浦区', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320826', N'涟水县', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320829', N'洪泽县', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320830', N'盱眙县', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320831', N'金湖县', N'3', N'320800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320900', N'盐城市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320901', N'市辖区', N'3', N'320900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320902', N'亭湖区', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320903', N'盐都区', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320921', N'响水县', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320922', N'滨海县', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320923', N'阜宁县', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320924', N'射阳县', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320925', N'建湖县', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320981', N'东台市', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'320982', N'大丰市', N'3', N'320900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321000', N'扬州市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321001', N'市辖区', N'3', N'321000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321002', N'广陵区', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321003', N'邗江区', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321011', N'维扬区', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321023', N'宝应县', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321081', N'仪征市', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321084', N'高邮市', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321088', N'江都市', N'3', N'321000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321100', N'镇江市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321101', N'市辖区', N'3', N'321100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321102', N'京口区', N'3', N'321100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321111', N'润州区', N'3', N'321100', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321112', N'丹徒区', N'3', N'321100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321181', N'丹阳市', N'3', N'321100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321182', N'扬中市', N'3', N'321100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321183', N'句容市', N'3', N'321100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321200', N'泰州市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321201', N'市辖区', N'3', N'321200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321202', N'海陵区', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321203', N'高港区', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321281', N'兴化市', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321282', N'靖江市', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321283', N'泰兴市', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321284', N'姜堰市', N'3', N'321200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321300', N'宿迁市', N'2', N'320000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321301', N'市辖区', N'3', N'321300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321302', N'宿城区', N'3', N'321300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321311', N'宿豫区', N'3', N'321300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321322', N'沭阳县', N'3', N'321300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321323', N'泗阳县', N'3', N'321300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'321324', N'泗洪县', N'3', N'321300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330000', N'浙江省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330100', N'杭州市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330101', N'市辖区', N'3', N'330100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330102', N'上城区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330103', N'下城区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330104', N'江干区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330105', N'拱墅区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330106', N'西湖区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330108', N'滨江区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330109', N'萧山区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330110', N'余杭区', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330122', N'桐庐县', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330127', N'淳安县', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330182', N'建德市', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330183', N'富阳市', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330185', N'临安市', N'3', N'330100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330200', N'宁波市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330201', N'市辖区', N'3', N'330200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330203', N'海曙区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330204', N'江东区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330205', N'江北区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330206', N'北仑区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330211', N'镇海区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330212', N'鄞州区', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330225', N'象山县', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330226', N'宁海县', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330281', N'余姚市', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330282', N'慈溪市', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330283', N'奉化市', N'3', N'330200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330300', N'温州市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330301', N'市辖区', N'3', N'330300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330302', N'鹿城区', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330303', N'龙湾区', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330304', N'瓯海区', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330322', N'洞头县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330324', N'永嘉县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330326', N'平阳县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330327', N'苍南县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330328', N'文成县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330329', N'泰顺县', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330381', N'瑞安市', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330382', N'乐清市', N'3', N'330300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330400', N'嘉兴市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330401', N'市辖区', N'3', N'330400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330402', N'南湖区', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330411', N'秀洲区', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330421', N'嘉善县', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330424', N'海盐县', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330481', N'海宁市', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330482', N'平湖市', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330483', N'桐乡市', N'3', N'330400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330500', N'湖州市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330501', N'市辖区', N'3', N'330500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330502', N'吴兴区', N'3', N'330500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330503', N'南浔区', N'3', N'330500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330521', N'德清县', N'3', N'330500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330522', N'长兴县', N'3', N'330500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330523', N'安吉县', N'3', N'330500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330600', N'绍兴市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330601', N'市辖区', N'3', N'330600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330602', N'越城区', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330621', N'绍兴县', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330624', N'新昌县', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330681', N'诸暨市', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330682', N'上虞市', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330683', N'嵊州市', N'3', N'330600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330700', N'金华市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330701', N'市辖区', N'3', N'330700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330702', N'婺城区', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330703', N'金东区', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330723', N'武义县', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330726', N'浦江县', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330727', N'磐安县', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330781', N'兰溪市', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330782', N'义乌市', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330783', N'东阳市', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330784', N'永康市', N'3', N'330700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330800', N'衢州市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330801', N'市辖区', N'3', N'330800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330802', N'柯城区', N'3', N'330800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330803', N'衢江区', N'3', N'330800', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330822', N'常山县', N'3', N'330800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330824', N'开化县', N'3', N'330800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330825', N'龙游县', N'3', N'330800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330881', N'江山市', N'3', N'330800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330900', N'舟山市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330901', N'市辖区', N'3', N'330900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330902', N'定海区', N'3', N'330900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330903', N'普陀区', N'3', N'330900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330921', N'岱山县', N'3', N'330900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'330922', N'嵊泗县', N'3', N'330900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331000', N'台州市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331001', N'市辖区', N'3', N'331000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331002', N'椒江区', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331003', N'黄岩区', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331004', N'路桥区', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331021', N'玉环县', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331022', N'三门县', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331023', N'天台县', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331024', N'仙居县', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331081', N'温岭市', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331082', N'临海市', N'3', N'331000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331100', N'丽水市', N'2', N'330000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331101', N'市辖区', N'3', N'331100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331102', N'莲都区', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331121', N'青田县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331122', N'缙云县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331123', N'遂昌县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331124', N'松阳县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331125', N'云和县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331126', N'庆元县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331127', N'景宁畲族自治县', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'331181', N'龙泉市', N'3', N'331100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340000', N'安徽省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340100', N'合肥市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340101', N'市辖区', N'3', N'340100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340102', N'瑶海区', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340103', N'庐阳区', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340104', N'蜀山区', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340111', N'包河区', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340121', N'长丰县', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340122', N'肥东县', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340123', N'肥西县', N'3', N'340100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340200', N'芜湖市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340201', N'市辖区', N'3', N'340200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340202', N'镜湖区', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340203', N'弋江区', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340207', N'鸠江区', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340208', N'三山区', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340221', N'芜湖县', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340222', N'繁昌县', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340223', N'南陵县', N'3', N'340200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340300', N'蚌埠市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340301', N'市辖区', N'3', N'340300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340302', N'龙子湖区', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340303', N'蚌山区', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340304', N'禹会区', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340311', N'淮上区', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340321', N'怀远县', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340322', N'五河县', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340323', N'固镇县', N'3', N'340300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340400', N'淮南市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340401', N'市辖区', N'3', N'340400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340402', N'大通区', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340403', N'田家庵区', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340404', N'谢家集区', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340405', N'八公山区', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340406', N'潘集区', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340421', N'凤台县', N'3', N'340400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340500', N'马鞍山市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340501', N'市辖区', N'3', N'340500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340502', N'金家庄区', N'3', N'340500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340503', N'花山区', N'3', N'340500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340504', N'雨山区', N'3', N'340500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340521', N'当涂县', N'3', N'340500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340600', N'淮北市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340601', N'市辖区', N'3', N'340600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340602', N'杜集区', N'3', N'340600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340603', N'相山区', N'3', N'340600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340604', N'烈山区', N'3', N'340600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340621', N'濉溪县', N'3', N'340600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340700', N'铜陵市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340701', N'市辖区', N'3', N'340700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340702', N'铜官山区', N'3', N'340700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340703', N'狮子山区', N'3', N'340700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340711', N'郊区', N'3', N'340700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340721', N'铜陵县', N'3', N'340700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340800', N'安庆市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340801', N'市辖区', N'3', N'340800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340802', N'迎江区', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340803', N'大观区', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340811', N'宜秀区', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340822', N'怀宁县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340823', N'枞阳县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340824', N'潜山县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340825', N'太湖县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340826', N'宿松县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340827', N'望江县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340828', N'岳西县', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'340881', N'桐城市', N'3', N'340800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341000', N'黄山市', N'2', N'340000', N'1', NULL)
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341001', N'市辖区', N'3', N'341000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341002', N'屯溪区', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341003', N'黄山区', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341004', N'徽州区', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341021', N'歙县', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341022', N'休宁县', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341023', N'黟县', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341024', N'祁门县', N'3', N'341000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341100', N'滁州市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341101', N'市辖区', N'3', N'341100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341102', N'琅琊区', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341103', N'南谯区', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341122', N'来安县', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341124', N'全椒县', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341125', N'定远县', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341126', N'凤阳县', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341181', N'天长市', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341182', N'明光市', N'3', N'341100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341200', N'阜阳市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341201', N'市辖区', N'3', N'341200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341202', N'颍州区', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341203', N'颍东区', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341204', N'颍泉区', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341221', N'临泉县', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341222', N'太和县', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341225', N'阜南县', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341226', N'颍上县', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341282', N'界首市', N'3', N'341200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341300', N'宿州市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341301', N'市辖区', N'3', N'341300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341302', N'埇桥区', N'3', N'341300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341321', N'砀山县', N'3', N'341300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341322', N'萧县', N'3', N'341300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341323', N'灵璧县', N'3', N'341300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341324', N'泗县', N'3', N'341300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341400', N'巢湖市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341401', N'市辖区', N'3', N'341400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341402', N'居巢区', N'3', N'341400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341421', N'庐江县', N'3', N'341400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341422', N'无为县', N'3', N'341400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341423', N'含山县', N'3', N'341400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341424', N'和县', N'3', N'341400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341500', N'六安市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341501', N'市辖区', N'3', N'341500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341502', N'金安区', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341503', N'裕安区', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341521', N'寿县', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341522', N'霍邱县', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341523', N'舒城县', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341524', N'金寨县', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341525', N'霍山县', N'3', N'341500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341600', N'亳州市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341601', N'市辖区', N'3', N'341600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341602', N'谯城区', N'3', N'341600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341621', N'涡阳县', N'3', N'341600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341622', N'蒙城县', N'3', N'341600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341623', N'利辛县', N'3', N'341600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341700', N'池州市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341701', N'市辖区', N'3', N'341700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341702', N'贵池区', N'3', N'341700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341721', N'东至县', N'3', N'341700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341722', N'石台县', N'3', N'341700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341723', N'青阳县', N'3', N'341700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341800', N'宣城市', N'2', N'340000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341801', N'市辖区', N'3', N'341800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341802', N'宣州区', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341821', N'郎溪县', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341822', N'广德县', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341823', N'泾县', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341824', N'绩溪县', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341825', N'旌德县', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'341881', N'宁国市', N'3', N'341800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350000', N'福建省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350100', N'福州市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350101', N'市辖区', N'3', N'350100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350102', N'鼓楼区', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350103', N'台江区', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350104', N'仓山区', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350105', N'马尾区', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350111', N'晋安区', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350121', N'闽侯县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350122', N'连江县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350123', N'罗源县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350124', N'闽清县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350125', N'永泰县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350128', N'平潭县', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350181', N'福清市', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350182', N'长乐市', N'3', N'350100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350200', N'厦门市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350201', N'市辖区', N'3', N'350200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350203', N'思明区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350205', N'海沧区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350206', N'湖里区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350211', N'集美区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350212', N'同安区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350213', N'翔安区', N'3', N'350200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350300', N'莆田市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350301', N'市辖区', N'3', N'350300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350302', N'城厢区', N'3', N'350300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350303', N'涵江区', N'3', N'350300', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350304', N'荔城区', N'3', N'350300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350305', N'秀屿区', N'3', N'350300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350322', N'仙游县', N'3', N'350300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350400', N'三明市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350401', N'市辖区', N'3', N'350400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350402', N'梅列区', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350403', N'三元区', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350421', N'明溪县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350423', N'清流县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350424', N'宁化县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350425', N'大田县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350426', N'尤溪县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350427', N'沙县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350428', N'将乐县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350429', N'泰宁县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350430', N'建宁县', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350481', N'永安市', N'3', N'350400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350500', N'泉州市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350501', N'市辖区', N'3', N'350500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350502', N'鲤城区', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350503', N'丰泽区', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350504', N'洛江区', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350505', N'泉港区', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350521', N'惠安县', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350524', N'安溪县', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350525', N'永春县', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350526', N'德化县', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350527', N'金门县', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350581', N'石狮市', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350582', N'晋江市', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350583', N'南安市', N'3', N'350500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350600', N'漳州市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350601', N'市辖区', N'3', N'350600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350602', N'芗城区', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350603', N'龙文区', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350622', N'云霄县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350623', N'漳浦县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350624', N'诏安县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350625', N'长泰县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350626', N'东山县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350627', N'南靖县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350628', N'平和县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350629', N'华安县', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350681', N'龙海市', N'3', N'350600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350700', N'南平市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350701', N'市辖区', N'3', N'350700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350702', N'延平区', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350721', N'顺昌县', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350722', N'浦城县', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350723', N'光泽县', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350724', N'松溪县', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350725', N'政和县', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350781', N'邵武市', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350782', N'武夷山市', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350783', N'建瓯市', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350784', N'建阳市', N'3', N'350700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350800', N'龙岩市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350801', N'市辖区', N'3', N'350800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350802', N'新罗区', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350821', N'长汀县', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350822', N'永定县', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350823', N'上杭县', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350824', N'武平县', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350825', N'连城县', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350881', N'漳平市', N'3', N'350800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350900', N'宁德市', N'2', N'350000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350901', N'市辖区', N'3', N'350900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350902', N'蕉城区', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350921', N'霞浦县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350922', N'古田县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350923', N'屏南县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350924', N'寿宁县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350925', N'周宁县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350926', N'柘荣县', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350981', N'福安市', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'350982', N'福鼎市', N'3', N'350900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360000', N'江西省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360100', N'南昌市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360101', N'市辖区', N'3', N'360100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360102', N'东湖区', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360103', N'西湖区', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360104', N'青云谱区', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360105', N'湾里区', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360111', N'青山湖区', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360121', N'南昌县', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360122', N'新建县', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360123', N'安义县', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360124', N'进贤县', N'3', N'360100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360200', N'景德镇市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360201', N'市辖区', N'3', N'360200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360202', N'昌江区', N'3', N'360200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360203', N'珠山区', N'3', N'360200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360222', N'浮梁县', N'3', N'360200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360281', N'乐平市', N'3', N'360200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360300', N'萍乡市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360301', N'市辖区', N'3', N'360300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360302', N'安源区', N'3', N'360300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360313', N'湘东区', N'3', N'360300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360321', N'莲花县', N'3', N'360300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360322', N'上栗县', N'3', N'360300', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360323', N'芦溪县', N'3', N'360300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360400', N'九江市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360401', N'市辖区', N'3', N'360400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360402', N'庐山区', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360403', N'浔阳区', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360421', N'九江县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360423', N'武宁县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360424', N'修水县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360425', N'永修县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360426', N'德安县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360427', N'星子县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360428', N'都昌县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360429', N'湖口县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360430', N'彭泽县', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360481', N'瑞昌市', N'3', N'360400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360500', N'新余市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360501', N'市辖区', N'3', N'360500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360502', N'渝水区', N'3', N'360500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360521', N'分宜县', N'3', N'360500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360600', N'鹰潭市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360601', N'市辖区', N'3', N'360600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360602', N'月湖区', N'3', N'360600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360622', N'余江县', N'3', N'360600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360681', N'贵溪市', N'3', N'360600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360700', N'赣州市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360701', N'市辖区', N'3', N'360700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360702', N'章贡区', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360721', N'赣县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360722', N'信丰县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360723', N'大余县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360724', N'上犹县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360725', N'崇义县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360726', N'安远县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360727', N'龙南县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360728', N'定南县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360729', N'全南县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360730', N'宁都县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360731', N'于都县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360732', N'兴国县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360733', N'会昌县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360734', N'寻乌县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360735', N'石城县', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360781', N'瑞金市', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360782', N'南康市', N'3', N'360700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360800', N'吉安市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360801', N'市辖区', N'3', N'360800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360802', N'吉州区', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360803', N'青原区', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360821', N'吉安县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360822', N'吉水县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360823', N'峡江县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360824', N'新干县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360825', N'永丰县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360826', N'泰和县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360827', N'遂川县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360828', N'万安县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360829', N'安福县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360830', N'永新县', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360881', N'井冈山市', N'3', N'360800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360900', N'宜春市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360901', N'市辖区', N'3', N'360900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360902', N'袁州区', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360921', N'奉新县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360922', N'万载县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360923', N'上高县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360924', N'宜丰县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360925', N'靖安县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360926', N'铜鼓县', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360981', N'丰城市', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360982', N'樟树市', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'360983', N'高安市', N'3', N'360900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361000', N'抚州市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361001', N'市辖区', N'3', N'361000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361002', N'临川区', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361021', N'南城县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361022', N'黎川县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361023', N'南丰县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361024', N'崇仁县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361025', N'乐安县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361026', N'宜黄县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361027', N'金溪县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361028', N'资溪县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361029', N'东乡县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361030', N'广昌县', N'3', N'361000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361100', N'上饶市', N'2', N'360000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361101', N'市辖区', N'3', N'361100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361102', N'信州区', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361121', N'上饶县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361122', N'广丰县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361123', N'玉山县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361124', N'铅山县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361125', N'横峰县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361126', N'弋阳县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361127', N'余干县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361128', N'鄱阳县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361129', N'万年县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361130', N'婺源县', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'361181', N'德兴市', N'3', N'361100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370000', N'山东省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370100', N'济南市', N'2', N'370000', N'1', NULL)
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370101', N'市辖区', N'3', N'370100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370102', N'历下区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370103', N'市中区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370104', N'槐荫区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370105', N'天桥区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370112', N'历城区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370113', N'长清区', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370124', N'平阴县', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370125', N'济阳县', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370126', N'商河县', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370181', N'章丘市', N'3', N'370100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370200', N'青岛市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370201', N'市辖区', N'3', N'370200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370202', N'市南区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370203', N'市北区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370205', N'四方区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370211', N'黄岛区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370212', N'崂山区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370213', N'李沧区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370214', N'城阳区', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370281', N'胶州市', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370282', N'即墨市', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370283', N'平度市', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370284', N'胶南市', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370285', N'莱西市', N'3', N'370200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370300', N'淄博市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370301', N'市辖区', N'3', N'370300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370302', N'淄川区', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370303', N'张店区', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370304', N'博山区', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370305', N'临淄区', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370306', N'周村区', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370321', N'桓台县', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370322', N'高青县', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370323', N'沂源县', N'3', N'370300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370400', N'枣庄市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370401', N'市辖区', N'3', N'370400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370402', N'市中区', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370403', N'薛城区', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370404', N'峄城区', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370405', N'台儿庄区', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370406', N'山亭区', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370481', N'滕州市', N'3', N'370400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370500', N'东营市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370501', N'市辖区', N'3', N'370500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370502', N'东营区', N'3', N'370500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370503', N'河口区', N'3', N'370500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370521', N'垦利县', N'3', N'370500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370522', N'利津县', N'3', N'370500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370523', N'广饶县', N'3', N'370500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370600', N'烟台市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370601', N'市辖区', N'3', N'370600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370602', N'芝罘区', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370611', N'福山区', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370612', N'牟平区', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370613', N'莱山区', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370634', N'长岛县', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370681', N'龙口市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370682', N'莱阳市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370683', N'莱州市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370684', N'蓬莱市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370685', N'招远市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370686', N'栖霞市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370687', N'海阳市', N'3', N'370600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370700', N'潍坊市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370701', N'市辖区', N'3', N'370700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370702', N'潍城区', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370703', N'寒亭区', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370704', N'坊子区', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370705', N'奎文区', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370724', N'临朐县', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370725', N'昌乐县', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370781', N'青州市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370782', N'诸城市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370783', N'寿光市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370784', N'安丘市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370785', N'高密市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370786', N'昌邑市', N'3', N'370700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370800', N'济宁市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370801', N'市辖区', N'3', N'370800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370802', N'市中区', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370811', N'任城区', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370826', N'微山县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370827', N'鱼台县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370828', N'金乡县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370829', N'嘉祥县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370830', N'汶上县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370831', N'泗水县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370832', N'梁山县', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370881', N'曲阜市', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370882', N'兖州市', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370883', N'邹城市', N'3', N'370800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370900', N'泰安市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370901', N'市辖区', N'3', N'370900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370902', N'泰山区', N'3', N'370900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370911', N'岱岳区', N'3', N'370900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370921', N'宁阳县', N'3', N'370900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370923', N'东平县', N'3', N'370900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370982', N'新泰市', N'3', N'370900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'370983', N'肥城市', N'3', N'370900', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371000', N'威海市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371001', N'市辖区', N'3', N'371000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371002', N'环翠区', N'3', N'371000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371081', N'文登市', N'3', N'371000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371082', N'荣成市', N'3', N'371000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371083', N'乳山市', N'3', N'371000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371100', N'日照市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371101', N'市辖区', N'3', N'371100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371102', N'东港区', N'3', N'371100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371103', N'岚山区', N'3', N'371100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371121', N'五莲县', N'3', N'371100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371122', N'莒县', N'3', N'371100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371200', N'莱芜市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371201', N'市辖区', N'3', N'371200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371202', N'莱城区', N'3', N'371200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371203', N'钢城区', N'3', N'371200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371300', N'临沂市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371301', N'市辖区', N'3', N'371300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371302', N'兰山区', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371311', N'罗庄区', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371312', N'河东区', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371321', N'沂南县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371322', N'郯城县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371323', N'沂水县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371324', N'苍山县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371325', N'费县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371326', N'平邑县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371327', N'莒南县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371328', N'蒙阴县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371329', N'临沭县', N'3', N'371300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371400', N'德州市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371401', N'市辖区', N'3', N'371400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371402', N'德城区', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371421', N'陵县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371422', N'宁津县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371423', N'庆云县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371424', N'临邑县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371425', N'齐河县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371426', N'平原县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371427', N'夏津县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371428', N'武城县', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371481', N'乐陵市', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371482', N'禹城市', N'3', N'371400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371500', N'聊城市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371501', N'市辖区', N'3', N'371500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371502', N'东昌府区', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371521', N'阳谷县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371522', N'莘县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371523', N'茌平县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371524', N'东阿县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371525', N'冠县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371526', N'高唐县', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371581', N'临清市', N'3', N'371500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371600', N'滨州市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371601', N'市辖区', N'3', N'371600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371602', N'滨城区', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371621', N'惠民县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371622', N'阳信县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371623', N'无棣县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371624', N'沾化县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371625', N'博兴县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371626', N'邹平县', N'3', N'371600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371700', N'菏泽市', N'2', N'370000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371701', N'市辖区', N'3', N'371700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371702', N'牡丹区', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371721', N'曹县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371722', N'单县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371723', N'成武县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371724', N'巨野县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371725', N'郓城县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371726', N'鄄城县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371727', N'定陶县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'371728', N'东明县', N'3', N'371700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410000', N'河南省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410100', N'郑州市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410101', N'市辖区', N'3', N'410100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410102', N'中原区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410103', N'二七区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410104', N'管城回族区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410105', N'金水区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410106', N'上街区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410108', N'惠济区', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410122', N'中牟县', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410181', N'巩义市', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410182', N'荥阳市', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410183', N'新密市', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410184', N'新郑市', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410185', N'登封市', N'3', N'410100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410200', N'开封市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410201', N'市辖区', N'3', N'410200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410202', N'龙亭区', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410203', N'顺河回族区', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410204', N'鼓楼区', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410205', N'禹王台区', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410211', N'金明区', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410221', N'杞县', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410222', N'通许县', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410223', N'尉氏县', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410224', N'开封县', N'3', N'410200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410225', N'兰考县', N'3', N'410200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410300', N'洛阳市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410301', N'市辖区', N'3', N'410300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410302', N'老城区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410303', N'西工区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410304', N'瀍河回族区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410305', N'涧西区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410306', N'吉利区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410311', N'洛龙区', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410322', N'孟津县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410323', N'新安县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410324', N'栾川县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410325', N'嵩县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410326', N'汝阳县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410327', N'宜阳县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410328', N'洛宁县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410329', N'伊川县', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410381', N'偃师市', N'3', N'410300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410400', N'平顶山市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410401', N'市辖区', N'3', N'410400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410402', N'新华区', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410403', N'卫东区', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410404', N'石龙区', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410411', N'湛河区', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410421', N'宝丰县', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410422', N'叶县', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410423', N'鲁山县', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410425', N'郏县', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410481', N'舞钢市', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410482', N'汝州市', N'3', N'410400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410500', N'安阳市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410501', N'市辖区', N'3', N'410500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410502', N'文峰区', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410503', N'北关区', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410505', N'殷都区', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410506', N'龙安区', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410522', N'安阳县', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410523', N'汤阴县', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410526', N'滑县', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410527', N'内黄县', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410581', N'林州市', N'3', N'410500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410600', N'鹤壁市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410601', N'市辖区', N'3', N'410600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410602', N'鹤山区', N'3', N'410600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410603', N'山城区', N'3', N'410600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410611', N'淇滨区', N'3', N'410600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410621', N'浚县', N'3', N'410600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410622', N'淇县', N'3', N'410600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410700', N'新乡市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410701', N'市辖区', N'3', N'410700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410702', N'红旗区', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410703', N'卫滨区', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410704', N'凤泉区', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410711', N'牧野区', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410721', N'新乡县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410724', N'获嘉县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410725', N'原阳县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410726', N'延津县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410727', N'封丘县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410728', N'长垣县', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410781', N'卫辉市', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410782', N'辉县市', N'3', N'410700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410800', N'焦作市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410801', N'市辖区', N'3', N'410800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410802', N'解放区', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410803', N'中站区', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410804', N'马村区', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410811', N'山阳区', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410821', N'修武县', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410822', N'博爱县', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410823', N'武陟县', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410825', N'温县', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410881', N'济源市', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410882', N'沁阳市', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410883', N'孟州市', N'3', N'410800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410900', N'濮阳市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410901', N'市辖区', N'3', N'410900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410902', N'华龙区', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410922', N'清丰县', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410923', N'南乐县', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410926', N'范县', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410927', N'台前县', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'410928', N'濮阳县', N'3', N'410900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411000', N'许昌市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411001', N'市辖区', N'3', N'411000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411002', N'魏都区', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411023', N'许昌县', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411024', N'鄢陵县', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411025', N'襄城县', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411081', N'禹州市', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411082', N'长葛市', N'3', N'411000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411100', N'漯河市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411101', N'市辖区', N'3', N'411100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411102', N'源汇区', N'3', N'411100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411103', N'郾城区', N'3', N'411100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411104', N'召陵区', N'3', N'411100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411121', N'舞阳县', N'3', N'411100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411122', N'临颍县', N'3', N'411100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411200', N'三门峡市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411201', N'市辖区', N'3', N'411200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411202', N'湖滨区', N'3', N'411200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411221', N'渑池县', N'3', N'411200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411222', N'陕县', N'3', N'411200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411224', N'卢氏县', N'3', N'411200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411281', N'义马市', N'3', N'411200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411282', N'灵宝市', N'3', N'411200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411300', N'南阳市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411301', N'市辖区', N'3', N'411300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411302', N'宛城区', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411303', N'卧龙区', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411321', N'南召县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411322', N'方城县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411323', N'西峡县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411324', N'镇平县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411325', N'内乡县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411326', N'淅川县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411327', N'社旗县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411328', N'唐河县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411329', N'新野县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411330', N'桐柏县', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411381', N'邓州市', N'3', N'411300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411400', N'商丘市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411401', N'市辖区', N'3', N'411400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411402', N'梁园区', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411403', N'睢阳区', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411421', N'民权县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411422', N'睢县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411423', N'宁陵县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411424', N'柘城县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411425', N'虞城县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411426', N'夏邑县', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411481', N'永城市', N'3', N'411400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411500', N'信阳市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411501', N'市辖区', N'3', N'411500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411502', N'浉河区', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411503', N'平桥区', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411521', N'罗山县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411522', N'光山县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411523', N'新县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411524', N'商城县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411525', N'固始县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411526', N'潢川县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411527', N'淮滨县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411528', N'息县', N'3', N'411500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411600', N'周口市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411601', N'市辖区', N'3', N'411600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411602', N'川汇区', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411621', N'扶沟县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411622', N'西华县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411623', N'商水县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411624', N'沈丘县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411625', N'郸城县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411626', N'淮阳县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411627', N'太康县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411628', N'鹿邑县', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411681', N'项城市', N'3', N'411600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411700', N'驻马店市', N'2', N'410000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411701', N'市辖区', N'3', N'411700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411702', N'驿城区', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411721', N'西平县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411722', N'上蔡县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411723', N'平舆县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411724', N'正阳县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411725', N'确山县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411726', N'泌阳县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411727', N'汝南县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411728', N'遂平县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'411729', N'新蔡县', N'3', N'411700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420000', N'湖北省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420100', N'武汉市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420101', N'市辖区', N'3', N'420100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420102', N'江岸区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420103', N'江汉区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420104', N'硚口区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420105', N'汉阳区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420106', N'武昌区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420107', N'青山区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420111', N'洪山区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420112', N'东西湖区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420113', N'汉南区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420114', N'蔡甸区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420115', N'江夏区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420116', N'黄陂区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420117', N'新洲区', N'3', N'420100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420200', N'黄石市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420201', N'市辖区', N'3', N'420200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420202', N'黄石港区', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420203', N'西塞山区', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420204', N'下陆区', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420205', N'铁山区', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420222', N'阳新县', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420281', N'大冶市', N'3', N'420200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420300', N'十堰市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420301', N'市辖区', N'3', N'420300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420302', N'茅箭区', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420303', N'张湾区', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420321', N'郧县', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420322', N'郧西县', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420323', N'竹山县', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420324', N'竹溪县', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420325', N'房县', N'3', N'420300', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420381', N'丹江口市', N'3', N'420300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420500', N'宜昌市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420501', N'市辖区', N'3', N'420500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420502', N'西陵区', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420503', N'伍家岗区', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420504', N'点军区', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420505', N'猇亭区', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420506', N'夷陵区', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420525', N'远安县', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420526', N'兴山县', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420527', N'秭归县', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420528', N'长阳土家族自治县', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420529', N'五峰土家族自治县', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420581', N'宜都市', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420582', N'当阳市', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420583', N'枝江市', N'3', N'420500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420600', N'襄樊市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420601', N'市辖区', N'3', N'420600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420602', N'襄城区', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420606', N'樊城区', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420607', N'襄阳区', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420624', N'南漳县', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420625', N'谷城县', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420626', N'保康县', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420682', N'老河口市', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420683', N'枣阳市', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420684', N'宜城市', N'3', N'420600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420700', N'鄂州市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420701', N'市辖区', N'3', N'420700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420702', N'梁子湖区', N'3', N'420700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420703', N'华容区', N'3', N'420700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420704', N'鄂城区', N'3', N'420700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420800', N'荆门市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420801', N'市辖区', N'3', N'420800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420802', N'东宝区', N'3', N'420800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420804', N'掇刀区', N'3', N'420800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420821', N'京山县', N'3', N'420800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420822', N'沙洋县', N'3', N'420800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420881', N'钟祥市', N'3', N'420800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420900', N'孝感市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420901', N'市辖区', N'3', N'420900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420902', N'孝南区', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420921', N'孝昌县', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420922', N'大悟县', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420923', N'云梦县', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420981', N'应城市', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420982', N'安陆市', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'420984', N'汉川市', N'3', N'420900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421000', N'荆州市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421001', N'市辖区', N'3', N'421000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421002', N'沙市区', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421003', N'荆州区', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421022', N'公安县', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421023', N'监利县', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421024', N'江陵县', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421081', N'石首市', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421083', N'洪湖市', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421087', N'松滋市', N'3', N'421000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421100', N'黄冈市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421101', N'市辖区', N'3', N'421100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421102', N'黄州区', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421121', N'团风县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421122', N'红安县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421123', N'罗田县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421124', N'英山县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421125', N'浠水县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421126', N'蕲春县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421127', N'黄梅县', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421181', N'麻城市', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421182', N'武穴市', N'3', N'421100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421200', N'咸宁市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421201', N'市辖区', N'3', N'421200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421202', N'咸安区', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421221', N'嘉鱼县', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421222', N'通城县', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421223', N'崇阳县', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421224', N'通山县', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421281', N'赤壁市', N'3', N'421200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421300', N'随州市', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421301', N'市辖区', N'3', N'421300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421302', N'曾都区', N'3', N'421300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'421381', N'广水市', N'3', N'421300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422800', N'恩施土家族苗族自治州', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422801', N'恩施市', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422802', N'利川市', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422822', N'建始县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422823', N'巴东县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422825', N'宣恩县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422826', N'咸丰县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422827', N'来凤县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'422828', N'鹤峰县', N'3', N'422800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'429000', N'省直辖县级行政单位', N'2', N'420000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'429004', N'仙桃市', N'3', N'429000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'429005', N'潜江市', N'3', N'429000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'429006', N'天门市', N'3', N'429000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'429021', N'神农架林区', N'3', N'429000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430000', N'湖南省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430100', N'长沙市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430101', N'市辖区', N'3', N'430100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430102', N'芙蓉区', N'3', N'430100', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430103', N'天心区', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430104', N'岳麓区', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430105', N'开福区', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430111', N'雨花区', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430121', N'长沙县', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430122', N'望城县', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430124', N'宁乡县', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430181', N'浏阳市', N'3', N'430100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430200', N'株洲市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430201', N'市辖区', N'3', N'430200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430202', N'荷塘区', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430203', N'芦淞区', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430204', N'石峰区', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430211', N'天元区', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430221', N'株洲县', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430223', N'攸县', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430224', N'茶陵县', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430225', N'炎陵县', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430281', N'醴陵市', N'3', N'430200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430300', N'湘潭市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430301', N'市辖区', N'3', N'430300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430302', N'雨湖区', N'3', N'430300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430304', N'岳塘区', N'3', N'430300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430321', N'湘潭县', N'3', N'430300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430381', N'湘乡市', N'3', N'430300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430382', N'韶山市', N'3', N'430300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430400', N'衡阳市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430401', N'市辖区', N'3', N'430400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430405', N'珠晖区', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430406', N'雁峰区', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430407', N'石鼓区', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430408', N'蒸湘区', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430412', N'南岳区', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430421', N'衡阳县', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430422', N'衡南县', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430423', N'衡山县', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430424', N'衡东县', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430426', N'祁东县', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430481', N'耒阳市', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430482', N'常宁市', N'3', N'430400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430500', N'邵阳市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430501', N'市辖区', N'3', N'430500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430502', N'双清区', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430503', N'大祥区', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430511', N'北塔区', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430521', N'邵东县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430522', N'新邵县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430523', N'邵阳县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430524', N'隆回县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430525', N'洞口县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430527', N'绥宁县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430528', N'新宁县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430529', N'城步苗族自治县', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430581', N'武冈市', N'3', N'430500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430600', N'岳阳市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430601', N'市辖区', N'3', N'430600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430602', N'岳阳楼区', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430603', N'云溪区', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430611', N'君山区', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430621', N'岳阳县', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430623', N'华容县', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430624', N'湘阴县', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430626', N'平江县', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430681', N'汨罗市', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430682', N'临湘市', N'3', N'430600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430700', N'常德市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430701', N'市辖区', N'3', N'430700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430702', N'武陵区', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430703', N'鼎城区', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430721', N'安乡县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430722', N'汉寿县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430723', N'澧县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430724', N'临澧县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430725', N'桃源县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430726', N'石门县', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430781', N'津市市', N'3', N'430700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430800', N'张家界市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430801', N'市辖区', N'3', N'430800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430802', N'永定区', N'3', N'430800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430811', N'武陵源区', N'3', N'430800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430821', N'慈利县', N'3', N'430800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430822', N'桑植县', N'3', N'430800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430900', N'益阳市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430901', N'市辖区', N'3', N'430900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430902', N'资阳区', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430903', N'赫山区', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430921', N'南县', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430922', N'桃江县', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430923', N'安化县', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'430981', N'沅江市', N'3', N'430900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431000', N'郴州市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431001', N'市辖区', N'3', N'431000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431002', N'北湖区', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431003', N'苏仙区', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431021', N'桂阳县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431022', N'宜章县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431023', N'永兴县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431024', N'嘉禾县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431025', N'临武县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431026', N'汝城县', N'3', N'431000', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431027', N'桂东县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431028', N'安仁县', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431081', N'资兴市', N'3', N'431000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431100', N'永州市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431101', N'市辖区', N'3', N'431100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431102', N'零陵区', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431103', N'冷水滩区', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431121', N'祁阳县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431122', N'东安县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431123', N'双牌县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431124', N'道县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431125', N'江永县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431126', N'宁远县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431127', N'蓝山县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431128', N'新田县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431129', N'江华瑶族自治县', N'3', N'431100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431200', N'怀化市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431201', N'市辖区', N'3', N'431200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431202', N'鹤城区', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431221', N'中方县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431222', N'沅陵县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431223', N'辰溪县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431224', N'溆浦县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431225', N'会同县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431226', N'麻阳苗族自治县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431227', N'新晃侗族自治县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431228', N'芷江侗族自治县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431229', N'靖州苗族侗族自治县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431230', N'通道侗族自治县', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431281', N'洪江市', N'3', N'431200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431300', N'娄底市', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431301', N'市辖区', N'3', N'431300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431302', N'娄星区', N'3', N'431300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431321', N'双峰县', N'3', N'431300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431322', N'新化县', N'3', N'431300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431381', N'冷水江市', N'3', N'431300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'431382', N'涟源市', N'3', N'431300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433100', N'湘西土家族苗族自治州', N'2', N'430000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433101', N'吉首市', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433122', N'泸溪县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433123', N'凤凰县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433124', N'花垣县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433125', N'保靖县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433126', N'古丈县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433127', N'永顺县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'433130', N'龙山县', N'3', N'433100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440000', N'广东省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440100', N'广州市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440101', N'市辖区', N'3', N'440100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440103', N'荔湾区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440104', N'越秀区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440105', N'海珠区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440106', N'天河区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440111', N'白云区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440112', N'黄埔区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440113', N'番禺区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440114', N'花都区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440115', N'南沙区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440116', N'萝岗区', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440183', N'增城市', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440184', N'从化市', N'3', N'440100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440200', N'韶关市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440201', N'市辖区', N'3', N'440200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440203', N'武江区', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440204', N'浈江区', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440205', N'曲江区', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440222', N'始兴县', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440224', N'仁化县', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440229', N'翁源县', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440232', N'乳源瑶族自治县', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440233', N'新丰县', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440281', N'乐昌市', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440282', N'南雄市', N'3', N'440200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440300', N'深圳市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440301', N'市辖区', N'3', N'440300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440303', N'罗湖区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440304', N'福田区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440305', N'南山区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440306', N'宝安区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440307', N'龙岗区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440308', N'盐田区', N'3', N'440300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440400', N'珠海市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440401', N'市辖区', N'3', N'440400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440402', N'香洲区', N'3', N'440400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440403', N'斗门区', N'3', N'440400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440404', N'金湾区', N'3', N'440400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440500', N'汕头市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440501', N'市辖区', N'3', N'440500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440507', N'龙湖区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440511', N'金平区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440512', N'濠江区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440513', N'潮阳区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440514', N'潮南区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440515', N'澄海区', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440523', N'南澳县', N'3', N'440500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440600', N'佛山市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440601', N'市辖区', N'3', N'440600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440604', N'禅城区', N'3', N'440600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440605', N'南海区', N'3', N'440600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440606', N'顺德区', N'3', N'440600', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440607', N'三水区', N'3', N'440600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440608', N'高明区', N'3', N'440600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440700', N'江门市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440701', N'市辖区', N'3', N'440700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440703', N'蓬江区', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440704', N'江海区', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440705', N'新会区', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440781', N'台山市', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440783', N'开平市', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440784', N'鹤山市', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440785', N'恩平市', N'3', N'440700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440800', N'湛江市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440801', N'市辖区', N'3', N'440800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440802', N'赤坎区', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440803', N'霞山区', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440804', N'坡头区', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440811', N'麻章区', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440823', N'遂溪县', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440825', N'徐闻县', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440881', N'廉江市', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440882', N'雷州市', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440883', N'吴川市', N'3', N'440800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440900', N'茂名市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440901', N'市辖区', N'3', N'440900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440902', N'茂南区', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440903', N'茂港区', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440923', N'电白县', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440981', N'高州市', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440982', N'化州市', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'440983', N'信宜市', N'3', N'440900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441200', N'肇庆市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441201', N'市辖区', N'3', N'441200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441202', N'端州区', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441203', N'鼎湖区', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441223', N'广宁县', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441224', N'怀集县', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441225', N'封开县', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441226', N'德庆县', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441283', N'高要市', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441284', N'四会市', N'3', N'441200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441300', N'惠州市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441301', N'市辖区', N'3', N'441300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441302', N'惠城区', N'3', N'441300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441303', N'惠阳区', N'3', N'441300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441322', N'博罗县', N'3', N'441300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441323', N'惠东县', N'3', N'441300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441324', N'龙门县', N'3', N'441300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441400', N'梅州市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441401', N'市辖区', N'3', N'441400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441402', N'梅江区', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441421', N'梅县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441422', N'大埔县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441423', N'丰顺县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441424', N'五华县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441426', N'平远县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441427', N'蕉岭县', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441481', N'兴宁市', N'3', N'441400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441500', N'汕尾市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441501', N'市辖区', N'3', N'441500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441502', N'城区', N'3', N'441500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441521', N'海丰县', N'3', N'441500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441523', N'陆河县', N'3', N'441500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441581', N'陆丰市', N'3', N'441500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441600', N'河源市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441601', N'市辖区', N'3', N'441600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441602', N'源城区', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441621', N'紫金县', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441622', N'龙川县', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441623', N'连平县', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441624', N'和平县', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441625', N'东源县', N'3', N'441600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441700', N'阳江市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441701', N'市辖区', N'3', N'441700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441702', N'江城区', N'3', N'441700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441721', N'阳西县', N'3', N'441700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441723', N'阳东县', N'3', N'441700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441781', N'阳春市', N'3', N'441700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441800', N'清远市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441801', N'市辖区', N'3', N'441800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441802', N'清城区', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441821', N'佛冈县', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441823', N'阳山县', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441825', N'连山壮族瑶族自治县', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441826', N'连南瑶族自治县', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441827', N'清新县', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441881', N'英德市', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441882', N'连州市', N'3', N'441800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'441900', N'东莞市', N'2', N'440000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'442000', N'中山市', N'2', N'440000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445100', N'潮州市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445101', N'市辖区', N'3', N'445100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445102', N'湘桥区', N'3', N'445100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445121', N'潮安县', N'3', N'445100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445122', N'饶平县', N'3', N'445100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445200', N'揭阳市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445201', N'市辖区', N'3', N'445200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445202', N'榕城区', N'3', N'445200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445221', N'揭东县', N'3', N'445200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445222', N'揭西县', N'3', N'445200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445224', N'惠来县', N'3', N'445200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445281', N'普宁市', N'3', N'445200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445300', N'云浮市', N'2', N'440000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445301', N'市辖区', N'3', N'445300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445302', N'云城区', N'3', N'445300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445321', N'新兴县', N'3', N'445300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445322', N'郁南县', N'3', N'445300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445323', N'云安县', N'3', N'445300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'445381', N'罗定市', N'3', N'445300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450000', N'广西壮族自治区', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450100', N'南宁市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450101', N'市辖区', N'3', N'450100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450102', N'兴宁区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450103', N'青秀区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450105', N'江南区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450107', N'西乡塘区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450108', N'良庆区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450109', N'邕宁区', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450122', N'武鸣县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450123', N'隆安县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450124', N'马山县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450125', N'上林县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450126', N'宾阳县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450127', N'横县', N'3', N'450100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450200', N'柳州市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450201', N'市辖区', N'3', N'450200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450202', N'城中区', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450203', N'鱼峰区', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450204', N'柳南区', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450205', N'柳北区', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450221', N'柳江县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450222', N'柳城县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450223', N'鹿寨县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450224', N'融安县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450225', N'融水苗族自治县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450226', N'三江侗族自治县', N'3', N'450200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450300', N'桂林市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450301', N'市辖区', N'3', N'450300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450302', N'秀峰区', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450303', N'叠彩区', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450304', N'象山区', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450305', N'七星区', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450311', N'雁山区', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450321', N'阳朔县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450322', N'临桂县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450323', N'灵川县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450324', N'全州县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450325', N'兴安县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450326', N'永福县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450327', N'灌阳县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450328', N'龙胜各族自治县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450329', N'资源县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450330', N'平乐县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450331', N'荔蒲县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450332', N'恭城瑶族自治县', N'3', N'450300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450400', N'梧州市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450401', N'市辖区', N'3', N'450400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450403', N'万秀区', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450404', N'蝶山区', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450405', N'长洲区', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450421', N'苍梧县', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450422', N'藤县', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450423', N'蒙山县', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450481', N'岑溪市', N'3', N'450400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450500', N'北海市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450501', N'市辖区', N'3', N'450500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450502', N'海城区', N'3', N'450500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450503', N'银海区', N'3', N'450500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450512', N'铁山港区', N'3', N'450500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450521', N'合浦县', N'3', N'450500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450600', N'防城港市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450601', N'市辖区', N'3', N'450600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450602', N'港口区', N'3', N'450600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450603', N'防城区', N'3', N'450600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450621', N'上思县', N'3', N'450600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450681', N'东兴市', N'3', N'450600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450700', N'钦州市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450701', N'市辖区', N'3', N'450700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450702', N'钦南区', N'3', N'450700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450703', N'钦北区', N'3', N'450700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450721', N'灵山县', N'3', N'450700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450722', N'浦北县', N'3', N'450700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450800', N'贵港市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450801', N'市辖区', N'3', N'450800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450802', N'港北区', N'3', N'450800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450803', N'港南区', N'3', N'450800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450804', N'覃塘区', N'3', N'450800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450821', N'平南县', N'3', N'450800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450881', N'桂平市', N'3', N'450800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450900', N'玉林市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450901', N'市辖区', N'3', N'450900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450902', N'玉州区', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450921', N'容县', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450922', N'陆川县', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450923', N'博白县', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450924', N'兴业县', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'450981', N'北流市', N'3', N'450900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451000', N'百色市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451001', N'市辖区', N'3', N'451000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451002', N'右江区', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451021', N'田阳县', N'3', N'451000', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451022', N'田东县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451023', N'平果县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451024', N'德保县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451025', N'靖西县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451026', N'那坡县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451027', N'凌云县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451028', N'乐业县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451029', N'田林县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451030', N'西林县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451031', N'隆林各族自治县', N'3', N'451000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451100', N'贺州市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451101', N'市辖区', N'3', N'451100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451102', N'八步区', N'3', N'451100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451121', N'昭平县', N'3', N'451100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451122', N'钟山县', N'3', N'451100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451123', N'富川瑶族自治县', N'3', N'451100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451200', N'河池市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451201', N'市辖区', N'3', N'451200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451202', N'金城江区', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451221', N'南丹县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451222', N'天峨县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451223', N'凤山县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451224', N'东兰县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451225', N'罗城仫佬族自治县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451226', N'环江毛南族自治县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451227', N'巴马瑶族自治县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451228', N'都安瑶族自治县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451229', N'大化瑶族自治县', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451281', N'宜州市', N'3', N'451200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451300', N'来宾市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451301', N'市辖区', N'3', N'451300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451302', N'兴宾区', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451321', N'忻城县', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451322', N'象州县', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451323', N'武宣县', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451324', N'金秀瑶族自治县', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451381', N'合山市', N'3', N'451300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451400', N'崇左市', N'2', N'450000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451401', N'市辖区', N'3', N'451400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451402', N'江洲区', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451421', N'扶绥县', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451422', N'宁明县', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451423', N'龙州县', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451424', N'大新县', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451425', N'天等县', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'451481', N'凭祥市', N'3', N'451400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460000', N'海南省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460100', N'海口市', N'2', N'460000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460101', N'市辖区', N'3', N'460100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460105', N'秀英区', N'3', N'460100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460106', N'龙华区', N'3', N'460100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460107', N'琼山区', N'3', N'460100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460108', N'美兰区', N'3', N'460100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460200', N'三亚市', N'2', N'460000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'460201', N'市辖区', N'3', N'460200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469000', N'省直辖县级行政单位', N'2', N'460000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469001', N'五指山市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469002', N'琼海市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469003', N'儋州市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469005', N'文昌市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469006', N'万宁市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469007', N'东方市', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469021', N'定安县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469022', N'屯昌县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469023', N'澄迈县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469024', N'临高县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469025', N'白沙黎族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469026', N'昌江黎族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469027', N'乐东黎族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469028', N'陵水黎族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469029', N'保亭黎族苗族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469030', N'琼中黎族苗族自治县', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469031', N'西沙群岛', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469032', N'南沙群岛', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'469033', N'中沙群岛的岛礁及其海域', N'3', N'469000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500000', N'重庆市', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500100', N'市辖区', N'2', N'500000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500101', N'万州区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500102', N'涪陵区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500103', N'渝中区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500104', N'大渡口区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500105', N'江北区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500106', N'沙坪坝区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500107', N'九龙坡区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500108', N'南岸区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500109', N'北碚区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500110', N'万盛区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500111', N'双桥区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500112', N'渝北区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500113', N'巴南区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500114', N'黔江区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500115', N'长寿区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500116', N'江津区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500117', N'合川区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500118', N'永川区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500119', N'南川区', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500222', N'綦江县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500223', N'潼南县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500224', N'铜梁县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500225', N'大足县', N'2', N'500000', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500226', N'荣昌县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500227', N'璧山县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500228', N'梁平县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500229', N'城口县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500230', N'丰都县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500231', N'垫江县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500232', N'武隆县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500233', N'忠县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500234', N'开县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500235', N'云阳县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500236', N'奉节县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500237', N'巫山县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500238', N'巫溪县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500240', N'石柱土家族自治县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500241', N'秀山土家族苗族自治县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500242', N'酉阳土家族苗族自治县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'500243', N'彭水苗族土家族自治县', N'2', N'500000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510000', N'四川省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510100', N'成都市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510101', N'市辖区', N'3', N'510100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510104', N'锦江区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510105', N'青羊区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510106', N'金牛区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510107', N'武侯区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510108', N'成华区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510112', N'龙泉驿区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510113', N'青白江区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510114', N'新都区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510115', N'温江区', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510121', N'金堂县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510122', N'双流县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510124', N'郫县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510129', N'大邑县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510131', N'蒲江县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510132', N'新津县', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510181', N'都江堰市', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510182', N'彭州市', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510183', N'邛崃市', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510184', N'崇州市', N'3', N'510100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510300', N'自贡市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510301', N'市辖区', N'3', N'510300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510302', N'自流井区', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510303', N'贡井区', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510304', N'大安区', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510311', N'沿滩区', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510321', N'荣县', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510322', N'富顺县', N'3', N'510300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510400', N'攀枝花市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510401', N'市辖区', N'3', N'510400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510402', N'东区', N'3', N'510400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510403', N'西区', N'3', N'510400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510411', N'仁和区', N'3', N'510400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510421', N'米易县', N'3', N'510400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510422', N'盐边县', N'3', N'510400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510500', N'泸州市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510501', N'市辖区', N'3', N'510500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510502', N'江阳区', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510503', N'纳溪区', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510504', N'龙马潭区', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510521', N'泸县', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510522', N'合江县', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510524', N'叙永县', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510525', N'古蔺县', N'3', N'510500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510600', N'德阳市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510601', N'市辖区', N'3', N'510600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510603', N'旌阳区', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510623', N'中江县', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510626', N'罗江县', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510681', N'广汉市', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510682', N'什邡市', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510683', N'绵竹市', N'3', N'510600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510700', N'绵阳市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510701', N'市辖区', N'3', N'510700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510703', N'涪城区', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510704', N'游仙区', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510722', N'三台县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510723', N'盐亭县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510724', N'安县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510725', N'梓潼县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510726', N'北川羌族自治县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510727', N'平武县', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510781', N'江油市', N'3', N'510700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510800', N'广元市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510801', N'市辖区', N'3', N'510800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510802', N'市中区', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510811', N'元坝区', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510812', N'朝天区', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510821', N'旺苍县', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510822', N'青川县', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510823', N'剑阁县', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510824', N'苍溪县', N'3', N'510800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510900', N'遂宁市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510901', N'市辖区', N'3', N'510900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510903', N'船山区', N'3', N'510900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510904', N'安居区', N'3', N'510900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510921', N'蓬溪县', N'3', N'510900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510922', N'射洪县', N'3', N'510900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'510923', N'大英县', N'3', N'510900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511000', N'内江市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511001', N'市辖区', N'3', N'511000', N'0', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511002', N'市中区', N'3', N'511000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511011', N'东兴区', N'3', N'511000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511024', N'威远县', N'3', N'511000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511025', N'资中县', N'3', N'511000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511028', N'隆昌县', N'3', N'511000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511100', N'乐山市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511101', N'市辖区', N'3', N'511100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511102', N'市中区', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511111', N'沙湾区', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511112', N'五通桥区', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511113', N'金口河区', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511123', N'犍为县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511124', N'井研县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511126', N'夹江县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511129', N'沐川县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511132', N'峨边彝族自治县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511133', N'马边彝族自治县', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511181', N'峨眉山市', N'3', N'511100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511300', N'南充市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511301', N'市辖区', N'3', N'511300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511302', N'顺庆区', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511303', N'高坪区', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511304', N'嘉陵区', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511321', N'南部县', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511322', N'营山县', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511323', N'蓬安县', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511324', N'仪陇县', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511325', N'西充县', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511381', N'阆中市', N'3', N'511300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511400', N'眉山市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511401', N'市辖区', N'3', N'511400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511402', N'东坡区', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511421', N'仁寿县', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511422', N'彭山县', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511423', N'洪雅县', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511424', N'丹棱县', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511425', N'青神县', N'3', N'511400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511500', N'宜宾市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511501', N'市辖区', N'3', N'511500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511502', N'翠屏区', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511521', N'宜宾县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511522', N'南溪县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511523', N'江安县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511524', N'长宁县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511525', N'高县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511526', N'珙县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511527', N'筠连县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511528', N'兴文县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511529', N'屏山县', N'3', N'511500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511600', N'广安市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511601', N'市辖区', N'3', N'511600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511602', N'广安区', N'3', N'511600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511621', N'岳池县', N'3', N'511600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511622', N'武胜县', N'3', N'511600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511623', N'邻水县', N'3', N'511600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511681', N'华蓥市', N'3', N'511600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511700', N'达州市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511701', N'市辖区', N'3', N'511700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511702', N'通川区', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511721', N'达县', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511722', N'宣汉县', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511723', N'开江县', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511724', N'大竹县', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511725', N'渠县', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511781', N'万源市', N'3', N'511700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511800', N'雅安市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511801', N'市辖区', N'3', N'511800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511802', N'雨城区', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511821', N'名山县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511822', N'荥经县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511823', N'汉源县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511824', N'石棉县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511825', N'天全县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511826', N'芦山县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511827', N'宝兴县', N'3', N'511800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511900', N'巴中市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511901', N'市辖区', N'3', N'511900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511902', N'巴州区', N'3', N'511900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511921', N'通江县', N'3', N'511900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511922', N'南江县', N'3', N'511900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'511923', N'平昌县', N'3', N'511900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512000', N'资阳市', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512001', N'市辖区', N'3', N'512000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512002', N'雁江区', N'3', N'512000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512021', N'安岳县', N'3', N'512000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512022', N'乐至县', N'3', N'512000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'512081', N'简阳市', N'3', N'512000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513200', N'阿坝藏族羌族自治州', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513221', N'汶川县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513222', N'理县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513223', N'茂县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513224', N'松潘县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513225', N'九寨沟县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513226', N'金川县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513227', N'小金县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513228', N'黑水县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513229', N'马尔康县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513230', N'壤塘县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513231', N'阿坝县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513232', N'若尔盖县', N'3', N'513200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513233', N'红原县', N'3', N'513200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513300', N'甘孜藏族自治州', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513321', N'康定县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513322', N'泸定县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513323', N'丹巴县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513324', N'九龙县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513325', N'雅江县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513326', N'道孚县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513327', N'炉霍县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513328', N'甘孜县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513329', N'新龙县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513330', N'德格县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513331', N'白玉县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513332', N'石渠县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513333', N'色达县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513334', N'理塘县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513335', N'巴塘县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513336', N'乡城县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513337', N'稻城县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513338', N'得荣县', N'3', N'513300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513400', N'凉山彝族自治州', N'2', N'510000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513401', N'西昌市', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513422', N'木里藏族自治县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513423', N'盐源县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513424', N'德昌县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513425', N'会理县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513426', N'会东县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513427', N'宁南县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513428', N'普格县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513429', N'布拖县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513430', N'金阳县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513431', N'昭觉县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513432', N'喜德县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513433', N'冕宁县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513434', N'越西县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513435', N'甘洛县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513436', N'美姑县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'513437', N'雷波县', N'3', N'513400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520000', N'贵州省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520100', N'贵阳市', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520101', N'市辖区', N'3', N'520100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520102', N'南明区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520103', N'云岩区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520111', N'花溪区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520112', N'乌当区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520113', N'白云区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520114', N'小河区', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520121', N'开阳县', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520122', N'息烽县', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520123', N'修文县', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520181', N'清镇市', N'3', N'520100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520200', N'六盘水市', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520201', N'钟山区', N'3', N'520200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520203', N'六枝特区', N'3', N'520200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520221', N'水城县', N'3', N'520200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520222', N'盘县', N'3', N'520200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520300', N'遵义市', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520301', N'市辖区', N'3', N'520300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520302', N'红花岗区', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520303', N'汇川区', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520321', N'遵义县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520322', N'桐梓县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520323', N'绥阳县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520324', N'正安县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520325', N'道真仡佬族苗族自治县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520326', N'务川仡佬族苗族自治县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520327', N'凤冈县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520328', N'湄潭县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520329', N'余庆县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520330', N'习水县', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520381', N'赤水市', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520382', N'仁怀市', N'3', N'520300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520400', N'安顺市', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520401', N'市辖区', N'3', N'520400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520402', N'西秀区', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520421', N'平坝县', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520422', N'普定县', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520423', N'镇宁布依族苗族自治县', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520424', N'关岭布依族苗族自治县', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'520425', N'紫云苗族布依族自治县', N'3', N'520400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522200', N'铜仁地区', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522201', N'铜仁市', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522222', N'江口县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522223', N'玉屏侗族自治县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522224', N'石阡县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522225', N'思南县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522226', N'印江土家族苗族自治县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522227', N'德江县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522228', N'沿河土家族自治县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522229', N'松桃苗族自治县', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522230', N'万山特区', N'3', N'522200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522300', N'黔西南布依族苗族自治州', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522301', N'兴义市', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522322', N'兴仁县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522323', N'普安县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522324', N'晴隆县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522325', N'贞丰县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522326', N'望谟县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522327', N'册亨县', N'3', N'522300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522328', N'安龙县', N'3', N'522300', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522400', N'毕节地区', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522401', N'毕节市', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522422', N'大方县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522423', N'黔西县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522424', N'金沙县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522425', N'织金县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522426', N'纳雍县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522427', N'威宁彝族回族苗族自治县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522428', N'赫章县', N'3', N'522400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522600', N'黔东南苗族侗族自治州', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522601', N'凯里市', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522622', N'黄平县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522623', N'施秉县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522624', N'三穗县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522625', N'镇远县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522626', N'岑巩县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522627', N'天柱县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522628', N'锦屏县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522629', N'剑河县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522630', N'台江县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522631', N'黎平县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522632', N'榕江县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522633', N'从江县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522634', N'雷山县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522635', N'麻江县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522636', N'丹寨县', N'3', N'522600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522700', N'黔南布依族苗族自治州', N'2', N'520000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522701', N'都匀市', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522702', N'福泉市', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522722', N'荔波县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522723', N'贵定县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522725', N'瓮安县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522726', N'独山县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522727', N'平塘县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522728', N'罗甸县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522729', N'长顺县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522730', N'龙里县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522731', N'惠水县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'522732', N'三都水族自治县', N'3', N'522700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530000', N'云南省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530100', N'昆明市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530101', N'市辖区', N'3', N'530100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530102', N'五华区', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530103', N'盘龙区', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530111', N'官渡区', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530112', N'西山区', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530113', N'东川区', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530121', N'呈贡县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530122', N'晋宁县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530124', N'富民县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530125', N'宜良县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530126', N'石林彝族自治县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530127', N'嵩明县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530128', N'禄劝彝族苗族自治县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530129', N'寻甸回族彝族自治县', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530181', N'安宁市', N'3', N'530100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530300', N'曲靖市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530301', N'市辖区', N'3', N'530300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530302', N'麒麟区', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530321', N'马龙县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530322', N'陆良县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530323', N'师宗县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530324', N'罗平县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530325', N'富源县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530326', N'会泽县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530328', N'沾益县', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530381', N'宣威市', N'3', N'530300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530400', N'玉溪市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530401', N'市辖区', N'3', N'530400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530402', N'红塔区', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530421', N'江川县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530422', N'澄江县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530423', N'通海县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530424', N'华宁县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530425', N'易门县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530426', N'峨山彝族自治县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530427', N'新平彝族傣族自治县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530428', N'元江哈尼族彝族傣族自治县', N'3', N'530400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530500', N'保山市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530501', N'市辖区', N'3', N'530500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530502', N'隆阳区', N'3', N'530500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530521', N'施甸县', N'3', N'530500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530522', N'腾冲县', N'3', N'530500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530523', N'龙陵县', N'3', N'530500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530524', N'昌宁县', N'3', N'530500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530600', N'昭通市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530601', N'市辖区', N'3', N'530600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530602', N'昭阳区', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530621', N'鲁甸县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530622', N'巧家县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530623', N'盐津县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530624', N'大关县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530625', N'永善县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530626', N'绥江县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530627', N'镇雄县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530628', N'彝良县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530629', N'威信县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530630', N'水富县', N'3', N'530600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530700', N'丽江市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530701', N'市辖区', N'3', N'530700', N'0', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530702', N'古城区', N'3', N'530700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530721', N'玉龙纳西族自治县', N'3', N'530700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530722', N'永胜县', N'3', N'530700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530723', N'华坪县', N'3', N'530700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530724', N'宁蒗彝族自治县', N'3', N'530700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530800', N'普洱市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530801', N'市辖区', N'3', N'530800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530802', N'思茅区', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530821', N'宁洱哈尼族彝族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530822', N'墨江哈尼族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530823', N'景东彝族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530824', N'景谷傣族彝族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530825', N'镇沅彝族哈尼族拉祜族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530826', N'江城哈尼族彝族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530827', N'孟连傣族拉祜族佤族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530828', N'澜沧拉祜族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530829', N'西盟佤族自治县', N'3', N'530800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530900', N'临沧市', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530901', N'市辖区', N'3', N'530900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530902', N'临翔区', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530921', N'凤庆县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530922', N'云县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530923', N'永德县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530924', N'镇康县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530925', N'双江拉祜族佤族布朗族傣族自治县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530926', N'耿马傣族佤族自治县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'530927', N'沧源佤族自治县', N'3', N'530900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532300', N'楚雄彝族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532301', N'楚雄市', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532322', N'双柏县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532323', N'牟定县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532324', N'南华县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532325', N'姚安县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532326', N'大姚县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532327', N'永仁县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532328', N'元谋县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532329', N'武定县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532331', N'禄丰县', N'3', N'532300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532500', N'红河哈尼族彝族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532501', N'个旧市', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532502', N'开远市', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532522', N'蒙自县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532523', N'屏边苗族自治县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532524', N'建水县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532525', N'石屏县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532526', N'弥勒县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532527', N'泸西县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532528', N'元阳县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532529', N'红河县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532530', N'金平苗族瑶族傣族自治县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532531', N'绿春县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532532', N'河口瑶族自治县', N'3', N'532500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532600', N'文山壮族苗族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532621', N'文山县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532622', N'砚山县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532623', N'西畴县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532624', N'麻栗坡县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532625', N'马关县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532626', N'丘北县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532627', N'广南县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532628', N'富宁县', N'3', N'532600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532800', N'西双版纳傣族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532801', N'景洪市', N'3', N'532800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532822', N'勐海县', N'3', N'532800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532823', N'勐腊县', N'3', N'532800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532900', N'大理白族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532901', N'大理市', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532922', N'漾濞彝族自治县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532923', N'祥云县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532924', N'宾川县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532925', N'弥渡县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532926', N'南涧彝族自治县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532927', N'巍山彝族回族自治县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532928', N'永平县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532929', N'云龙县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532930', N'洱源县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532931', N'剑川县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'532932', N'鹤庆县', N'3', N'532900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533100', N'德宏傣族景颇族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533102', N'瑞丽市', N'3', N'533100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533103', N'潞西市', N'3', N'533100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533122', N'梁河县', N'3', N'533100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533123', N'盈江县', N'3', N'533100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533124', N'陇川县', N'3', N'533100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533300', N'怒江傈僳族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533321', N'泸水县', N'3', N'533300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533323', N'福贡县', N'3', N'533300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533324', N'贡山独龙族怒族自治县', N'3', N'533300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533325', N'兰坪白族普米族自治县', N'3', N'533300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533400', N'迪庆藏族自治州', N'2', N'530000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533421', N'香格里拉县', N'3', N'533400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533422', N'德钦县', N'3', N'533400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'533423', N'维西傈僳族自治县', N'3', N'533400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540000', N'西藏自治区', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540100', N'拉萨市', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540101', N'市辖区', N'3', N'540100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540102', N'城关区', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540121', N'林周县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540122', N'当雄县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540123', N'尼木县', N'3', N'540100', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540124', N'曲水县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540125', N'堆龙德庆县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540126', N'达孜县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'540127', N'墨竹工卡县', N'3', N'540100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542100', N'昌都地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542121', N'昌都县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542122', N'江达县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542123', N'贡觉县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542124', N'类乌齐县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542125', N'丁青县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542126', N'察雅县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542127', N'八宿县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542128', N'左贡县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542129', N'芒康县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542132', N'洛隆县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542133', N'边坝县', N'3', N'542100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542200', N'山南地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542221', N'乃东县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542222', N'扎囊县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542223', N'贡嘎县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542224', N'桑日县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542225', N'琼结县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542226', N'曲松县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542227', N'措美县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542228', N'洛扎县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542229', N'加查县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542231', N'隆子县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542232', N'错那县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542233', N'浪卡子县', N'3', N'542200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542300', N'日喀则地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542301', N'日喀则市', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542322', N'南木林县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542323', N'江孜县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542324', N'定日县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542325', N'萨迦县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542326', N'拉孜县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542327', N'昂仁县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542328', N'谢通门县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542329', N'白朗县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542330', N'仁布县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542331', N'康马县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542332', N'定结县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542333', N'仲巴县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542334', N'亚东县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542335', N'吉隆县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542336', N'聂拉木县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542337', N'萨嘎县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542338', N'岗巴县', N'3', N'542300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542400', N'那曲地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542421', N'那曲县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542422', N'嘉黎县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542423', N'比如县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542424', N'聂荣县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542425', N'安多县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542426', N'申扎县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542427', N'索县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542428', N'班戈县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542429', N'巴青县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542430', N'尼玛县', N'3', N'542400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542500', N'阿里地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542521', N'普兰县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542522', N'札达县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542523', N'噶尔县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542524', N'日土县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542525', N'革吉县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542526', N'改则县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542527', N'措勤县', N'3', N'542500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542600', N'林芝地区', N'2', N'540000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542621', N'林芝县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542622', N'工布江达县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542623', N'米林县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542624', N'墨脱县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542625', N'波密县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542626', N'察隅县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'542627', N'朗县', N'3', N'542600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610000', N'陕西省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610100', N'西安市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610101', N'市辖区', N'3', N'610100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610102', N'新城区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610103', N'碑林区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610104', N'莲湖区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610111', N'灞桥区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610112', N'未央区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610113', N'雁塔区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610114', N'阎良区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610115', N'临潼区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610116', N'长安区', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610122', N'蓝田县', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610124', N'周至县', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610125', N'户县', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610126', N'高陵县', N'3', N'610100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610200', N'铜川市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610201', N'市辖区', N'3', N'610200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610202', N'王益区', N'3', N'610200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610203', N'印台区', N'3', N'610200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610204', N'耀州区', N'3', N'610200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610222', N'宜君县', N'3', N'610200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610300', N'宝鸡市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610301', N'市辖区', N'3', N'610300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610302', N'渭滨区', N'3', N'610300', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610303', N'金台区', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610304', N'陈仓区', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610322', N'凤翔县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610323', N'岐山县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610324', N'扶风县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610326', N'眉县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610327', N'陇县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610328', N'千阳县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610329', N'麟游县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610330', N'凤县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610331', N'太白县', N'3', N'610300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610400', N'咸阳市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610401', N'市辖区', N'3', N'610400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610402', N'秦都区', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610403', N'杨凌区', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610404', N'渭城区', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610422', N'三原县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610423', N'泾阳县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610424', N'乾县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610425', N'礼泉县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610426', N'永寿县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610427', N'彬县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610428', N'长武县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610429', N'旬邑县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610430', N'淳化县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610431', N'武功县', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610481', N'兴平市', N'3', N'610400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610500', N'渭南市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610501', N'市辖区', N'3', N'610500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610502', N'临渭区', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610521', N'华县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610522', N'潼关县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610523', N'大荔县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610524', N'合阳县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610525', N'澄城县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610526', N'蒲城县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610527', N'白水县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610528', N'富平县', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610581', N'韩城市', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610582', N'华阴市', N'3', N'610500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610600', N'延安市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610601', N'市辖区', N'3', N'610600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610602', N'宝塔区', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610621', N'延长县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610622', N'延川县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610623', N'子长县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610624', N'安塞县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610625', N'志丹县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610626', N'吴起县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610627', N'甘泉县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610628', N'富县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610629', N'洛川县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610630', N'宜川县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610631', N'黄龙县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610632', N'黄陵县', N'3', N'610600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610700', N'汉中市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610701', N'市辖区', N'3', N'610700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610702', N'汉台区', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610721', N'南郑县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610722', N'城固县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610723', N'洋县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610724', N'西乡县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610725', N'勉县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610726', N'宁强县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610727', N'略阳县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610728', N'镇巴县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610729', N'留坝县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610730', N'佛坪县', N'3', N'610700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610800', N'榆林市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610801', N'市辖区', N'3', N'610800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610802', N'榆阳区', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610821', N'神木县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610822', N'府谷县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610823', N'横山县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610824', N'靖边县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610825', N'定边县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610826', N'绥德县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610827', N'米脂县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610828', N'佳县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610829', N'吴堡县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610830', N'清涧县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610831', N'子洲县', N'3', N'610800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610900', N'安康市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610901', N'市辖区', N'3', N'610900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610902', N'汉滨区', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610921', N'汉阴县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610922', N'石泉县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610923', N'宁陕县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610924', N'紫阳县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610925', N'岚皋县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610926', N'平利县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610927', N'镇坪县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610928', N'旬阳县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'610929', N'白河县', N'3', N'610900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611000', N'商洛市', N'2', N'610000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611001', N'市辖区', N'3', N'611000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611002', N'商州区', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611021', N'洛南县', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611022', N'丹凤县', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611023', N'商南县', N'3', N'611000', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611024', N'山阳县', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611025', N'镇安县', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'611026', N'柞水县', N'3', N'611000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620000', N'甘肃省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620100', N'兰州市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620101', N'市辖区', N'3', N'620100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620102', N'城关区', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620103', N'七里河区', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620104', N'西固区', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620105', N'安宁区', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620111', N'红古区', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620121', N'永登县', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620122', N'皋兰县', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620123', N'榆中县', N'3', N'620100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620200', N'嘉峪关市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620201', N'市辖区', N'3', N'620200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620300', N'金昌市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620301', N'市辖区', N'3', N'620300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620302', N'金川区', N'3', N'620300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620321', N'永昌县', N'3', N'620300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620400', N'白银市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620401', N'市辖区', N'3', N'620400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620402', N'白银区', N'3', N'620400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620403', N'平川区', N'3', N'620400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620421', N'靖远县', N'3', N'620400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620422', N'会宁县', N'3', N'620400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620423', N'景泰县', N'3', N'620400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620500', N'天水市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620501', N'市辖区', N'3', N'620500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620502', N'秦州区', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620503', N'麦积区', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620521', N'清水县', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620522', N'秦安县', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620523', N'甘谷县', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620524', N'武山县', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620525', N'张家川回族自治县', N'3', N'620500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620600', N'武威市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620601', N'市辖区', N'3', N'620600', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620602', N'凉州区', N'3', N'620600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620621', N'民勤县', N'3', N'620600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620622', N'古浪县', N'3', N'620600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620623', N'天祝藏族自治县', N'3', N'620600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620700', N'张掖市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620701', N'市辖区', N'3', N'620700', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620702', N'甘州区', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620721', N'肃南裕固族自治县', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620722', N'民乐县', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620723', N'临泽县', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620724', N'高台县', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620725', N'山丹县', N'3', N'620700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620800', N'平凉市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620801', N'市辖区', N'3', N'620800', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620802', N'崆峒区', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620821', N'泾川县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620822', N'灵台县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620823', N'崇信县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620824', N'华亭县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620825', N'庄浪县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620826', N'静宁县', N'3', N'620800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620900', N'酒泉市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620901', N'市辖区', N'3', N'620900', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620902', N'肃州区', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620921', N'金塔县', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620922', N'瓜州县', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620923', N'肃北蒙古族自治县', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620924', N'阿克塞哈萨克族自治县', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620981', N'玉门市', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'620982', N'敦煌市', N'3', N'620900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621000', N'庆阳市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621001', N'市辖区', N'3', N'621000', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621002', N'西峰区', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621021', N'庆城县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621022', N'环县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621023', N'华池县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621024', N'合水县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621025', N'正宁县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621026', N'宁县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621027', N'镇原县', N'3', N'621000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621100', N'定西市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621101', N'市辖区', N'3', N'621100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621102', N'安定区', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621121', N'通渭县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621122', N'陇西县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621123', N'渭源县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621124', N'临洮县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621125', N'漳县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621126', N'岷县', N'3', N'621100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621200', N'陇南市', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621201', N'市辖区', N'3', N'621200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621202', N'武都区', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621221', N'成县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621222', N'文县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621223', N'宕昌县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621224', N'康县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621225', N'西和县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621226', N'礼县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621227', N'徽县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'621228', N'两当县', N'3', N'621200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622900', N'临夏回族自治州', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622901', N'临夏市', N'3', N'622900', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622921', N'临夏县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622922', N'康乐县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622923', N'永靖县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622924', N'广河县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622925', N'和政县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622926', N'东乡族自治县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'622927', N'积石山保安族东乡族撒拉族自治县', N'3', N'622900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623000', N'甘南藏族自治州', N'2', N'620000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623001', N'合作市', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623021', N'临潭县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623022', N'卓尼县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623023', N'舟曲县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623024', N'迭部县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623025', N'玛曲县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623026', N'碌曲县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'623027', N'夏河县', N'3', N'623000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630000', N'青海省', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630100', N'西宁市', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630101', N'市辖区', N'3', N'630100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630102', N'城东区', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630103', N'城中区', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630104', N'城西区', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630105', N'城北区', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630121', N'大通回族土族自治县', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630122', N'湟中县', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'630123', N'湟源县', N'3', N'630100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632100', N'海东地区', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632121', N'平安县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632122', N'民和回族土族自治县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632123', N'乐都县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632126', N'互助土族自治县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632127', N'化隆回族自治县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632128', N'循化撒拉族自治县', N'3', N'632100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632200', N'海北藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632221', N'门源回族自治县', N'3', N'632200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632222', N'祁连县', N'3', N'632200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632223', N'海晏县', N'3', N'632200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632224', N'刚察县', N'3', N'632200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632300', N'黄南藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632321', N'同仁县', N'3', N'632300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632322', N'尖扎县', N'3', N'632300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632323', N'泽库县', N'3', N'632300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632324', N'河南蒙古族自治县', N'3', N'632300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632500', N'海南藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632521', N'共和县', N'3', N'632500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632522', N'同德县', N'3', N'632500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632523', N'贵德县', N'3', N'632500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632524', N'兴海县', N'3', N'632500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632525', N'贵南县', N'3', N'632500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632600', N'果洛藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632621', N'玛沁县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632622', N'班玛县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632623', N'甘德县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632624', N'达日县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632625', N'久治县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632626', N'玛多县', N'3', N'632600', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632700', N'玉树藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632721', N'玉树县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632722', N'杂多县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632723', N'称多县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632724', N'治多县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632725', N'囊谦县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632726', N'曲麻莱县', N'3', N'632700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632800', N'海西蒙古族藏族自治州', N'2', N'630000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632801', N'格尔木市', N'3', N'632800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632802', N'德令哈市', N'3', N'632800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632821', N'乌兰县', N'3', N'632800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632822', N'都兰县', N'3', N'632800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'632823', N'天峻县', N'3', N'632800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640000', N'宁夏回族自治区', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640100', N'银川市', N'2', N'640000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640101', N'市辖区', N'3', N'640100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640104', N'兴庆区', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640105', N'西夏区', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640106', N'金凤区', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640121', N'永宁县', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640122', N'贺兰县', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640181', N'灵武市', N'3', N'640100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640200', N'石嘴山市', N'2', N'640000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640201', N'市辖区', N'3', N'640200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640202', N'大武口区', N'3', N'640200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640205', N'惠农区', N'3', N'640200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640221', N'平罗县', N'3', N'640200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640300', N'吴忠市', N'2', N'640000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640301', N'市辖区', N'3', N'640300', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640302', N'利通区', N'3', N'640300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640323', N'盐池县', N'3', N'640300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640324', N'同心县', N'3', N'640300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640381', N'青铜峡市', N'3', N'640300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640400', N'固原市', N'2', N'640000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640401', N'市辖区', N'3', N'640400', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640402', N'原州区', N'3', N'640400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640422', N'西吉县', N'3', N'640400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640423', N'隆德县', N'3', N'640400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640424', N'泾源县', N'3', N'640400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640425', N'彭阳县', N'3', N'640400', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640500', N'中卫市', N'2', N'640000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640501', N'市辖区', N'3', N'640500', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640502', N'沙坡头区', N'3', N'640500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640521', N'中宁县', N'3', N'640500', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'640522', N'海原县', N'3', N'640500', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650000', N'新疆维吾尔自治区', N'1', N'0', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650100', N'乌鲁木齐市', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650101', N'市辖区', N'3', N'650100', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650102', N'天山区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650103', N'沙依巴克区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650104', N'新市区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650105', N'水磨沟区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650106', N'头屯河区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650107', N'达坂城区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650109', N'米东区', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650121', N'乌鲁木齐县', N'3', N'650100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650200', N'克拉玛依市', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650201', N'市辖区', N'3', N'650200', N'0', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650202', N'独山子区', N'3', N'650200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650203', N'克拉玛依区', N'3', N'650200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650204', N'白碱滩区', N'3', N'650200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'650205', N'乌尔禾区', N'3', N'650200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652100', N'吐鲁番地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652101', N'吐鲁番市', N'3', N'652100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652122', N'鄯善县', N'3', N'652100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652123', N'托克逊县', N'3', N'652100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652200', N'哈密地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652201', N'哈密市', N'3', N'652200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652222', N'巴里坤哈萨克自治县', N'3', N'652200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652223', N'伊吾县', N'3', N'652200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652300', N'昌吉回族自治州', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652301', N'昌吉市', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652302', N'阜康市', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652323', N'呼图壁县', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652324', N'玛纳斯县', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652325', N'奇台县', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652327', N'吉木萨尔县', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652328', N'木垒哈萨克自治县', N'3', N'652300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652700', N'博尔塔拉蒙古自治州', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652701', N'博乐市', N'3', N'652700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652722', N'精河县', N'3', N'652700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652723', N'温泉县', N'3', N'652700', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652800', N'巴音郭楞蒙古自治州', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652801', N'库尔勒市', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652822', N'轮台县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652823', N'尉犁县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652824', N'若羌县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652825', N'且末县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652826', N'焉耆回族自治县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652827', N'和静县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652828', N'和硕县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652829', N'博湖县', N'3', N'652800', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652900', N'阿克苏地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652901', N'阿克苏市', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652922', N'温宿县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652923', N'库车县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652924', N'沙雅县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652925', N'新和县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652926', N'拜城县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652927', N'乌什县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652928', N'阿瓦提县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'652929', N'柯坪县', N'3', N'652900', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653000', N'克孜勒苏柯尔克孜自治州', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653001', N'阿图什市', N'3', N'653000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653022', N'阿克陶县', N'3', N'653000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653023', N'阿合奇县', N'3', N'653000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653024', N'乌恰县', N'3', N'653000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653100', N'喀什地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653101', N'喀什市', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653121', N'疏附县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653122', N'疏勒县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653123', N'英吉沙县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653124', N'泽普县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653125', N'莎车县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653126', N'叶城县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653127', N'麦盖提县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653128', N'岳普湖县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653129', N'伽师县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653130', N'巴楚县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653131', N'塔什库尔干塔吉克自治县', N'3', N'653100', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653200', N'和田地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653201', N'和田市', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653221', N'和田县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653222', N'墨玉县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653223', N'皮山县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653224', N'洛浦县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653225', N'策勒县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653226', N'于田县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'653227', N'民丰县', N'3', N'653200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654000', N'伊犁哈萨克自治州', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654002', N'伊宁市', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654003', N'奎屯市', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654021', N'伊宁县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654022', N'察布查尔锡伯自治县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654023', N'霍城县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654024', N'巩留县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654025', N'新源县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654026', N'昭苏县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654027', N'特克斯县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654028', N'尼勒克县', N'3', N'654000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654200', N'塔城地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654201', N'塔城市', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654202', N'乌苏市', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654221', N'额敏县', N'3', N'654200', N'1', N'1')
GO
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654223', N'沙湾县', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654224', N'托里县', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654225', N'裕民县', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654226', N'和布克赛尔蒙古自治县', N'3', N'654200', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654300', N'阿勒泰地区', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654301', N'阿勒泰市', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654321', N'布尔津县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654322', N'富蕴县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654323', N'福海县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654324', N'哈巴河县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654325', N'青河县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'654326', N'吉木乃县', N'3', N'654300', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'659000', N'自治区直辖县级行政单位', N'2', N'650000', N'1', NULL)
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'659001', N'石河子市', N'3', N'659000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'659002', N'阿拉尔市', N'3', N'659000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'659003', N'图木舒克市', N'3', N'659000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'659004', N'五家渠市', N'3', N'659000', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'710000', N'台湾省', N'1', N'0', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'810000', N'香港特别行政区', N'1', N'0', N'1', N'1')
INSERT [dbo].[sys_area] ([area_no], [area_name], [lev], [uplev], [area_sts], [if_leaf]) VALUES (N'820000', N'澳门特别行政区', N'1', N'0', N'1', N'1')
SET IDENTITY_INSERT [dbo].[sys_config] ON 

INSERT [dbo].[sys_config] ([id], [param_key], [param_value], [status], [remark]) VALUES (1, N'CLOUD_STORAGE_CONFIG_KEY', N'{"aliyunAccessKeyId":"","aliyunAccessKeySecret":"","aliyunBucketName":"","aliyunDomain":"","aliyunEndPoint":"","aliyunPrefix":"","qcloudBucketName":"","qcloudDomain":"","qcloudPrefix":"","qcloudSecretId":"","qcloudSecretKey":"","qiniuAccessKey":"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ","qiniuBucketName":"ios-app","qiniuDomain":"http://7xqbwh.dl1.z0.glb.clouddn.com","qiniuPrefix":"upload","qiniuSecretKey":"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV","type":1}', 0, N'云存储配置信息')
SET IDENTITY_INSERT [dbo].[sys_config] OFF
SET IDENTITY_INSERT [dbo].[sys_dept] ON 

INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [name], [order_num], [del_flag]) VALUES (1, 0, N'总部', 0, 0)
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [name], [order_num], [del_flag]) VALUES (2, 1, N'分公司', 1, 0)
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [name], [order_num], [del_flag]) VALUES (3, 2, N'研发部', 3, 0)
SET IDENTITY_INSERT [dbo].[sys_dept] OFF
SET IDENTITY_INSERT [dbo].[sys_dict] ON 

INSERT [dbo].[sys_dict] ([id], [name], [type], [code], [value], [order_num], [remark], [del_flag]) VALUES (1, N'性别', N'sex', N'0', N'女', 0, NULL, 0)
INSERT [dbo].[sys_dict] ([id], [name], [type], [code], [value], [order_num], [remark], [del_flag]) VALUES (2, N'性别', N'sex', N'1', N'男', 1, NULL, 0)
INSERT [dbo].[sys_dict] ([id], [name], [type], [code], [value], [order_num], [remark], [del_flag]) VALUES (3, N'性别', N'sex', N'2', N'未知', 3, NULL, 0)
SET IDENTITY_INSERT [dbo].[sys_dict] OFF
SET IDENTITY_INSERT [dbo].[sys_menu] ON 

INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (1, 0, N'系统管理', NULL, NULL, 0, N'fa fa-cog', 99, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (2, 1, N'管理员管理', N'modules/sys/user.html', NULL, 1, N'fa fa-user', 1, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (3, 1, N'角色管理', N'modules/sys/role.html', NULL, 1, N'fa fa-user-secret', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (4, 1, N'菜单管理', N'modules/sys/menu.html', NULL, 1, N'fa fa-th-list', 3, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (5, 1, N'SQL监控', N'druid/sql.html', NULL, 1, N'fa fa-bug', 4, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (15, 2, N'查看', NULL, N'sys:user:list,sys:user:info', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (16, 2, N'新增', NULL, N'sys:user:save,sys:role:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (17, 2, N'修改', NULL, N'sys:user:update,sys:role:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (18, 2, N'删除', NULL, N'sys:user:delete', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (19, 3, N'查看', NULL, N'sys:role:list,sys:role:info', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (20, 3, N'新增', NULL, N'sys:role:save,sys:menu:perms', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (21, 3, N'修改', NULL, N'sys:role:update,sys:menu:perms', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (22, 3, N'删除', NULL, N'sys:role:delete', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (23, 4, N'查看', NULL, N'sys:menu:list,sys:menu:info', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (24, 4, N'新增', NULL, N'sys:menu:save,sys:menu:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (25, 4, N'修改', NULL, N'sys:menu:update,sys:menu:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (26, 4, N'删除', NULL, N'sys:menu:delete', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (27, 1, N'参数管理', N'modules/sys/config.html', N'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, N'fa fa-sun-o', 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (29, 1, N'系统日志', N'modules/sys/log.html', N'sys:log:list', 1, N'fa fa-file-text-o', 7, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (31, 1, N'部门管理', N'modules/sys/dept.html', NULL, 1, N'fa fa-file-code-o', 1, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (32, 31, N'查看', NULL, N'sys:dept:list,sys:dept:info', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (33, 31, N'新增', NULL, N'sys:dept:save,sys:dept:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (34, 31, N'修改', NULL, N'sys:dept:update,sys:dept:select', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (35, 31, N'删除', NULL, N'sys:dept:delete', 2, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (36, 1, N'字典管理', N'modules/sys/dict.html', NULL, 1, N'fa fa-bookmark-o', 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (37, 36, N'查看', NULL, N'sys:dict:list,sys:dict:info', 2, NULL, 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (38, 36, N'新增', NULL, N'sys:dict:save', 2, NULL, 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (39, 36, N'修改', NULL, N'sys:dict:update', 2, NULL, 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (40, 36, N'删除', NULL, N'sys:dict:delete', 2, NULL, 6, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (92, 0, N'设计器', NULL, NULL, 0, N'fa fa-paper-plane', 3, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (93, 92, N'大屏设计器', N'./modules/bddp/home.html', NULL, 1, N'fa fa-pencil-square-o', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (94, 1, N'授权信息', N'AsReport?authMessage=1', N'grant:info', 1, N'fa fa-shield', 99, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (95, 0, N'大屏DEMO', NULL, NULL, 0, N'fa fa-tv', 100, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (96, 95, N'三农大数据指挥舱', N'bddpshow/show/c99268a7bdf0a8c8dec37f4e5927910d', NULL, 1, N'fa fa-eye', 10, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (97, 95, N'信贷综合业务驾驶舱', N'bddpshow/show/044a1af39843779cde39678289c42240', NULL, 1, N'fa fa-eye', 10, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (98, 95, N'综合业务_模板1_首页', N'bddpshow/show/41284e70ef854b0bc215fe95ec9f6aae', NULL, 1, N'fa fa-eye', 1, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (99, 95, N'综合业务_模板3_三列样式', N'bddpshow/show/51284e70ef854b0bc215fe95ec9f6aae', NULL, 1, N'fa fa-eye', 4, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (100, 95, N'综合业务_模板2_三行模块', N'bddpshow/show/d76cbda028bebf896552816e981c3cc2', NULL, 1, N'fa fa-eye', 5, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (101, 95, N'综合业务_模板4_七块', N'bddpshow/show/61284e70ef854b0bc215fe95ec9f6aae', N'', 1, N'fa fa-eye', 5, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (102, 0, N'BI配置', NULL, NULL, 0, N'fa fa-bars', 98, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (103, 102, N'数据集', N'developing.html?num=1', NULL, 1, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (104, 102, N'数据挖掘', N'developing.html?num=2', NULL, 1, NULL, 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (105, 95, N'业务风险_模板1', N'bddpshow/show/4286e3f913e364025ddc91d74ab7a5ad', NULL, 1, N'fa fa-eye', 7, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (106, 107, N'左右轮播1', N'modules/bddp/swiper/swiper.html', NULL, 1, N'fa fa-eye', 99, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (107, 0, N'整套报表轮播效果', NULL, NULL, 0, N'fa fa-refresh', 101, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (108, 107, N'左右轮播-淡入式', N'modules/bddp/swiper/swiperfade.html', NULL, 1, N'fa fa-eye', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (109, 107, N'左右轮播-自动切换', N'modules/bddp/swiper/swiperauto.html', NULL, 1, N'fa fa-eye', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (110, 107, N'不规则切换式1', N'modules/bddp/swiper/swiper.html', NULL, 1, N'fa fa-eye', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (111, 95, N'公司预览图', N'bddpshow/show/e22d6f7344ea0645b84c60a0a5a57cda', NULL, 1, N'fa fa-eye', 2, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (112, 95, N'人力资源', N'bddpshow/show/45eef4da7a8f4b56235e24190acd800f', NULL, 1, N'fa fa-eye', 9, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (113, 0, N'报表管理', NULL, NULL, 0, N'fa fa-table', 4, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (114, 92, N'网格式报表设计器', N'./modules/rdp/rdpDesign.html', NULL, 1, N'fa fa-braille', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (115, 113, N'网格报表管理', N'modules/rdp/list.html', NULL, 1, N'fa fa-user', 0, N'_self')
GO
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (116, 0, N'公共数据源配置', N'modules/ser/config/rdpDataConfig.html', NULL, 1, N'fa fa-database', 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (117, 0, N'网格报表DEMO', NULL, NULL, 0, N'fa fa-table', 99, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (118, 117, N'交叉-客户与产品交叉报表', N'rdppage/show/1ea3e7ef2e8d9bd9a44ba3f24a1417de', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (119, 117, N'分组-地域客户信息报表', N'rdppage/show/04c65e333d6c8cf1e006c054f8d6158b', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (120, 117, N'分块-用户信息', N'rdppage/show/b0f44689bd804c43d59d85871a99711c', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (121, 117, N'详情-入库通知书', N'rdppage/main/f001db5305e400fe28bb5f3ebac7e451', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (122, 117, N'动态-水电费统计', N'rdppage/show/f004ff76e9e10b6b7d4ecb396608ee0a', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (123, 117, N'对比-季度对比分析报表', N'rdppage/show/23a58db31668eef064370d9706a3896c', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (124, 117, N'预警-客户风险预警报表', N'rdppage/show/8b9873d6fb7e14e93794ee7fc11cc3a0', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (125, 117, N'一体化生成-查询列表', N'modules/rdp/demo/demo2.html', NULL, 1, N'fa fa-eye', 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (126, 117, N'自定义查询条件-查询列表', N'modules/rdp/demo/demo1.html', NULL, 1, N'fa fa-eye', 0, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (129, 117, N'动态列JAVABEAN', N'modules/rdp/javabean/c.html', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (131, 107, N'盒模型切换', N'modules/bddp/swiper/swipercube.html', NULL, 1, N'fa fa-eye', 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (132, 113, N'大屏幕报表管理', N'modules/bddp/home.html', NULL, 1, NULL, 0, N'_blank')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (133, 0, N'填报报表DEMO', N'', NULL, 0, N'fa fa-wpforms', 100, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (134, 133, N'人员基本情况表', N'rdppage/main/e93657d429ea44bfe6f5b7872676b35f?deptId=${deptId}&amp;userId=${userId}', NULL, 1, N'fa fa-eye', 1, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (135, 133, N'申报事项审批单', N'rdppage/main/6fbd2deabc701284edeb14003b26baea', NULL, 1, N'fa fa-eye', 2, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (136, 133, N'申报事项审批单编辑', N'rdppage/main/5bd730f8f1b65b0908e383ad76d15642', NULL, 1, N'fa fa-eye', 3, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (137, 133, N'填报添加验证DEMO', N'rdppage/main/b00eaf643bd2034ebc2a2e402a785667', NULL, 1, N'fa fa-eye', 4, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (138, 133, N'填报详情明细', N'rdppage/main/3132737d6c808d35f2fbc60f6ec6e2a5?userId=${userId}', NULL, 1, N'fa fa-eye', 5, N'_self')
INSERT [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num], [open_mode]) VALUES (139, 117, N'数据集过滤', N'rdppage/main/1cc54e0a1116c6c4dd06806b43621a25', NULL, 1, NULL, 0, N'_self')
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
SET IDENTITY_INSERT [dbo].[sys_role] ON 

INSERT [dbo].[sys_role] ([role_id], [role_name], [remark], [dept_id], [create_time]) VALUES (1, N'开发人员', NULL, 1, CAST(N'2018-10-31T17:27:10.000' AS DateTime))
INSERT [dbo].[sys_role] ([role_id], [role_name], [remark], [dept_id], [create_time]) VALUES (2, N'业务人员', NULL, 1, CAST(N'2018-10-31T17:28:01.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_role] OFF
SET IDENTITY_INSERT [dbo].[sys_role_dept] ON 

INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (1, 1, 1)
INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (2, 1, 2)
INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (3, 1, 3)
INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (4, 2, 1)
INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (5, 2, 2)
INSERT [dbo].[sys_role_dept] ([id], [role_id], [dept_id]) VALUES (6, 2, 3)
SET IDENTITY_INSERT [dbo].[sys_role_dept] OFF
SET IDENTITY_INSERT [dbo].[sys_role_menu] ON 

INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (1, 1, 92)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (2, 1, 93)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (3, 1, 114)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (4, 1, 95)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (5, 1, 96)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (6, 1, 97)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (7, 1, 98)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (8, 1, 99)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (9, 1, 100)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (10, 1, 101)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (11, 1, 105)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (12, 1, 111)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (13, 1, 112)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (14, 1, 102)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (15, 1, 103)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (16, 1, 104)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (17, 1, 107)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (18, 1, 106)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (19, 1, 108)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (20, 1, 109)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (21, 1, 110)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (22, 1, 113)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (23, 1, 115)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (24, 1, 116)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (25, 1, 117)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (26, 1, 118)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (27, 1, 119)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (28, 1, 120)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (29, 1, 121)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (30, 1, 122)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (31, 1, 123)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (32, 1, 124)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (33, 1, 125)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (34, 1, 126)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (35, 1, 129)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (36, 2, 95)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (37, 2, 96)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (38, 2, 97)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (39, 2, 98)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (40, 2, 99)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (41, 2, 100)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (42, 2, 101)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (43, 2, 105)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (44, 2, 111)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (45, 2, 112)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (46, 2, 107)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (47, 2, 106)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (48, 2, 108)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (49, 2, 109)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (50, 2, 110)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (51, 2, 117)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (52, 2, 118)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (53, 2, 119)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (54, 2, 120)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (55, 2, 121)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (56, 2, 122)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (57, 2, 123)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (58, 2, 124)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (59, 2, 125)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (60, 2, 126)
INSERT [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (61, 2, 129)
SET IDENTITY_INSERT [dbo].[sys_role_menu] OFF
SET IDENTITY_INSERT [dbo].[sys_user] ON 

INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (1, N'admin', N'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', N'YzcmCZNvbXocrsz9dm8e', N'517537832@qq.com', N' ', 1, 1, CAST(N'2018-08-27T14:00:00.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (2, N'user', N'7e9591ff11ba1fa4ef8f9c56483b79aed081f0beb46672820b6f9b1bb3aeed2a', N'rJOkHEBBEkdL1nt7ifW1', N'user@qq.com', N'13112345678', 1, 1, CAST(N'2018-10-31T17:25:39.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (3, N'guest', N'93ee72a556fd66126ac88633516c6ebe76c1490e99f92c3aa4a8e3cf2677080b', N'i8surV6S6L64zP5SO6yY', N'guest@qq.com', N'13212345678', 1, 1, CAST(N'2018-10-31T17:26:20.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (4, N'wangli', N'62eb29365851ecb8b71dde6f1eb06b27bcdc5dd214cfcc8f92120125591453e3', N'B1McpZZIbPEyZRkgMTAZ', N'wangli@qq.com', NULL, 1, 3, CAST(N'2018-11-15T16:22:46.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (5, N'zhengtao', N'3fda65d06831ae56ef17dd00bc51663722ce4dd47a50b32ac8cbe69f2d57808e', N'jS8QZrcVIDwKU46r9Hia', N'zhengtao@qq.com', NULL, 1, 3, CAST(N'2018-11-15T16:23:12.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (6, N'lixing', N'f7559b24a2e4b26fa0d6062e19b938c16d1ca24f8eb1f0be30262e3687d37a6b', N'3WY4u56aMUmE84T5lLYN', N'lixing@qq.com', NULL, 1, 3, CAST(N'2018-11-16T09:13:02.000' AS DateTime))
INSERT [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [dept_id], [create_time]) VALUES (7, N'zhangjianing', N'b4c44d29c06009f953762e449087f534e07c98950b7a34703e96862f82075a1f', N'esQGA84bXZdfob7qPyfK', N'zhangjianing@qq.com', NULL, 1, 3, CAST(N'2018-11-16T09:13:32.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_user] OFF
SET IDENTITY_INSERT [dbo].[sys_user_role] ON 

INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (1, 2, 1)
INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (2, 3, 2)
INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (3, 4, 1)
INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (4, 5, 1)
INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (5, 6, 1)
INSERT [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (6, 7, 1)
SET IDENTITY_INSERT [dbo].[sys_user_role] OFF
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A', N'农、林、牧、渔业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A01', N'农业', N'2', N'A')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A011', N'谷物种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0111', N'稻谷种植', N'4', N'A011')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0112', N'小麦种植', N'4', N'A011')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0113', N'玉米种植', N'4', N'A011')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0119', N'其他谷物种植', N'4', N'A011')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A012', N'豆类、油料和薯类种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0121', N'豆类种植', N'4', N'A012')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0122', N'油料种植', N'4', N'A012')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0123', N'薯类种植', N'4', N'A012')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A013', N'棉、麻、糖、烟草种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0131', N'棉花种植', N'4', N'A013')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0132', N'麻类种植', N'4', N'A013')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0133', N'糖料种植', N'4', N'A013')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0134', N'烟草种植', N'4', N'A013')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A014', N'蔬菜、食用菌及园艺作物种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0141', N'蔬菜种植', N'4', N'A014')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0142', N'食用菌种植', N'4', N'A014')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0143', N'花卉种植', N'4', N'A014')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0149', N'其他园艺作物种植', N'4', N'A014')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A015', N'水果种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0151', N'仁果类和核果类水果种植', N'4', N'A015')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0152', N'葡萄种植', N'4', N'A015')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0153', N'柑橘类种植', N'4', N'A015')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0154', N'香蕉等亚热带水果种植', N'4', N'A015')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0159', N'其他水果种植', N'4', N'A015')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A016', N'坚果、含油果、香料和饮料作物种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0161', N'坚果种植', N'4', N'A016')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0162', N'含油果种植', N'4', N'A016')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0163', N'香料作物种植', N'4', N'A016')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0169', N'茶及其他饮料作物种植', N'4', N'A016')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A017', N'中药材种植', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0170', N'中药材种植', N'4', N'A017')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A019', N'其他农业', N'3', N'A01')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0190', N'其他农业', N'4', N'A019')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A02', N'林业', N'2', N'A')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A021', N'林木育种和育苗', N'3', N'A02')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0211', N'林木育种', N'4', N'A021')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0212', N'林木育苗', N'4', N'A021')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A022', N'造林和更新', N'3', N'A02')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0220', N'造林和更新', N'4', N'A022')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A023', N'森林经营和管护', N'3', N'A02')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0230', N'森林经营和管护', N'4', N'A023')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A024', N'木材和竹材采运', N'3', N'A02')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0241', N'木材采运', N'4', N'A024')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0242', N'竹材采运', N'4', N'A024')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A025', N'林产品采集', N'3', N'A02')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0251', N'木竹材林产品采集', N'4', N'A025')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0252', N'非木竹材林产品采集', N'4', N'A025')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A03', N'畜牧业', N'2', N'A')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A031', N'牲畜饲养', N'3', N'A03')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0311', N'牛的饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0312', N'马的饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0313', N'猪的饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0314', N'羊的饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0315', N'骆驼饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0319', N'其他牲畜饲养', N'4', N'A031')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A032', N'家禽饲养', N'3', N'A03')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0321', N'鸡的饲养', N'4', N'A032')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0322', N'鸭的饲养', N'4', N'A032')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0323', N'鹅的饲养', N'4', N'A032')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0329', N'其他家禽饲养', N'4', N'A032')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A033', N'狩猎和捕捉动物', N'3', N'A03')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0330', N'狩猎和捕捉动物', N'4', N'A033')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A039', N'其他畜牧业', N'3', N'A03')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0390', N'其他畜牧业', N'4', N'A039')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A04', N'渔业', N'2', N'A')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A041', N'水产养殖', N'3', N'A04')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0411', N'海水养殖', N'4', N'A041')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0412', N'内陆养殖', N'4', N'A041')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A042', N'水产捕捞', N'3', N'A04')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0421', N'海水捕捞', N'4', N'A042')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0422', N'内陆捕捞', N'4', N'A042')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A05', N'农、林、牧、渔服务业', N'2', N'A')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A051', N'农业服务业', N'3', N'A05')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0511', N'农业机械服务', N'4', N'A051')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0512', N'灌溉服务', N'4', N'A051')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0513', N'农产品初加工服务', N'4', N'A051')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0519', N'其他农业服务', N'4', N'A051')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A052', N'林业服务业', N'3', N'A05')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0521', N'林业有害生物防治服务', N'4', N'A052')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0522', N'森林防火服务', N'4', N'A052')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0523', N'林产品初级加工服务', N'4', N'A052')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0529', N'其他林业服务', N'4', N'A052')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A053', N'畜牧服务业', N'3', N'A05')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0530', N'畜牧服务业', N'4', N'A053')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A054', N'渔业服务业', N'3', N'A05')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'A0540', N'渔业服务业', N'4', N'A054')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B', N'采矿业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B06', N'煤炭开采和洗选业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B061', N'烟煤和无烟煤开采洗选', N'3', N'B06')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0610', N'烟煤和无烟煤开采洗选', N'4', N'B061')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B062', N'褐煤开采洗选', N'3', N'B06')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0620', N'褐煤开采洗选', N'4', N'B062')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B069', N'其他煤炭采选', N'3', N'B06')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0690', N'其他煤炭采选', N'4', N'B069')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B07', N'石油和天然气开采业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B071', N'石油开采', N'3', N'B07')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0710', N'石油开采', N'4', N'B071')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B072', N'天然气开采', N'3', N'B07')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0720', N'天然气开采', N'4', N'B072')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B08', N'黑色金属矿采选业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B081', N'铁矿采选', N'3', N'B08')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0810', N'铁矿采选', N'4', N'B081')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B082', N'锰矿、铬矿采选', N'3', N'B08')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0820', N'锰矿、铬矿采选', N'4', N'B082')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B089', N'其他黑色金属矿采选', N'3', N'B08')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0890', N'其他黑色金属矿采选', N'4', N'B089')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B09', N'有色金属矿采选业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B091', N'常用有色金属矿采选', N'3', N'B09')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0911', N'铜矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0912', N'铅锌矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0913', N'镍钴矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0914', N'锡矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0915', N'锑矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0916', N'铝矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0917', N'镁矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0919', N'其他常用有色金属矿采选', N'4', N'B091')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B092', N'贵金属矿采选', N'3', N'B09')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0921', N'金矿采选', N'4', N'B092')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0922', N'银矿采选', N'4', N'B092')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0929', N'其他贵金属矿采选', N'4', N'B092')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B093', N'稀有稀土金属矿采选', N'3', N'B09')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0931', N'钨钼矿采选', N'4', N'B093')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0932', N'稀土金属矿采选', N'4', N'B093')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0933', N'放射性金属矿采选', N'4', N'B093')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B0939', N'其他稀有金属矿采选', N'4', N'B093')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B10', N'非金属矿采选业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B101', N'土砂石开采', N'3', N'B10')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1011', N'石灰石、石膏开采', N'4', N'B101')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1012', N'建筑装饰用石开采', N'4', N'B101')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1013', N'耐火土石开采', N'4', N'B101')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1019', N'粘土及其他土砂石开采', N'4', N'B101')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B102', N'化学矿开采', N'3', N'B10')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1020', N'化学矿开采', N'4', N'B102')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B103', N'采盐', N'3', N'B10')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1030', N'采盐', N'4', N'B103')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B109', N'石棉及其他非金属矿采选', N'3', N'B10')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1091', N'石棉、云母矿采选', N'4', N'B109')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1092', N'石墨、滑石采选', N'4', N'B109')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1093', N'宝石、玉石采选', N'4', N'B109')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1099', N'其他未列明非金属矿采选', N'4', N'B109')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B11', N'开采辅助活动', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B111', N'煤炭开采和洗选辅助活动', N'3', N'B11')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1110', N'煤炭开采和洗选辅助活动', N'4', N'B111')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B112', N'石油和天然气开采辅助活动', N'3', N'B11')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1120', N'石油和天然气开采辅助活动', N'4', N'B112')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B119', N'其他开采辅助活动', N'3', N'B11')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1190', N'其他开采辅助活动', N'4', N'B119')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B12', N'其他采矿业', N'2', N'B')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B120', N'其他采矿业', N'3', N'B12')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'B1200', N'其他采矿业', N'4', N'B120')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C', N'制造业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C13', N'农副食品加工业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C131', N'谷物磨制', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1310', N'谷物磨制', N'4', N'C131')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C132', N'饲料加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1320', N'饲料加工', N'4', N'C132')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C133', N'植物油加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1331', N'食用植物油加工', N'4', N'C133')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1332', N'非食用植物油加工', N'4', N'C133')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C134', N'制糖业', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1340', N'制糖业', N'4', N'C134')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C135', N'屠宰及肉类加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1351', N'牲畜屠宰', N'4', N'C135')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1352', N'禽类屠宰', N'4', N'C135')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1353', N'肉制品及副产品加工', N'4', N'C135')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C136', N'水产品加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1361', N'水产品冷冻加工', N'4', N'C136')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1362', N'鱼糜制品及水产品干腌制加工', N'4', N'C136')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1363', N'水产饲料制造', N'4', N'C136')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1364', N'鱼油提取及制品制造', N'4', N'C136')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1369', N'其他水产品加工', N'4', N'C136')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C137', N'蔬菜、水果和坚果加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1371', N'蔬菜加工', N'4', N'C137')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1372', N'水果和坚果加工', N'4', N'C137')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C139', N'其他农副食品加工', N'3', N'C13')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1391', N'淀粉及淀粉制品制造', N'4', N'C139')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1392', N'豆制品制造', N'4', N'C139')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1393', N'蛋品加工', N'4', N'C139')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1399', N'其他未列明农副食品加工', N'4', N'C139')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C14', N'食品制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C141', N'焙烤食品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1411', N'糕点、面包制造', N'4', N'C141')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1419', N'饼干及其他焙烤食品制造', N'4', N'C141')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C142', N'糖果、巧克力及蜜饯制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1421', N'糖果、巧克力制造', N'4', N'C142')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1422', N'蜜饯制作', N'4', N'C142')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C143', N'方便食品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1431', N'米、面制品制造', N'4', N'C143')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1432', N'速冻食品制造', N'4', N'C143')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1439', N'方便面及其他方便食品制造', N'4', N'C143')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C144', N'乳制品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1440', N'乳制品制造', N'4', N'C144')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C145', N'罐头食品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1451', N'肉、禽类罐头制造', N'4', N'C145')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1452', N'水产品罐头制造', N'4', N'C145')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1453', N'蔬菜、水果罐头制造', N'4', N'C145')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1459', N'其他罐头食品制造', N'4', N'C145')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C146', N'调味品、发酵制品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1461', N'味精制造', N'4', N'C146')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1462', N'酱油、食醋及类似制品制造', N'4', N'C146')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1469', N'其他调味品、发酵制品制造', N'4', N'C146')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C149', N'其他食品制造', N'3', N'C14')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1491', N'营养食品制造', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1492', N'保健食品制造', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1493', N'冷冻饮品及食用冰制造', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1494', N'盐加工', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1495', N'食品及饲料添加剂制造', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1499', N'其他未列明食品制造', N'4', N'C149')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C15', N'酒、饮料和精制茶制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C151', N'酒的制造', N'3', N'C15')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1511', N'酒精制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1512', N'白酒制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1513', N'啤酒制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1514', N'黄酒制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1515', N'葡萄酒制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1519', N'其他酒制造', N'4', N'C151')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C152', N'饮料制造', N'3', N'C15')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1521', N'碳酸饮料制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1522', N'瓶（罐）装饮用水制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1523', N'果菜汁及果菜汁饮料制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1524', N'含乳饮料和植物蛋白饮料制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1525', N'固体饮料制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1529', N'茶饮料及其他饮料制造', N'4', N'C152')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C153', N'精制茶加工', N'3', N'C15')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1530', N'精制茶加工', N'4', N'C153')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C16', N'烟草制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C161', N'烟叶复烤', N'3', N'C16')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1610', N'烟叶复烤', N'4', N'C161')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C162', N'卷烟制造', N'3', N'C16')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1620', N'卷烟制造', N'4', N'C162')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C169', N'其他烟草制品制造', N'3', N'C16')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1690', N'其他烟草制品制造', N'4', N'C169')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C17', N'纺织业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C171', N'棉纺织及印染精加工', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1711', N'棉纺纱加工', N'4', N'C171')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1712', N'棉织造加工', N'4', N'C171')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1713', N'棉印染精加工', N'4', N'C171')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C172', N'毛纺织及染整精加工', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1721', N'毛条和毛纱线加工', N'4', N'C172')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1722', N'毛织造加工', N'4', N'C172')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1723', N'毛染整精加工', N'4', N'C172')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C173', N'麻纺织及染整精加工', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1731', N'麻纤维纺前加工和纺纱', N'4', N'C173')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1732', N'麻织造加工', N'4', N'C173')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1733', N'麻染整精加工', N'4', N'C173')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C174', N'丝绢纺织及印染精加工', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1741', N'缫丝加工', N'4', N'C174')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1742', N'绢纺和丝织加工', N'4', N'C174')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1743', N'丝印染精加工', N'4', N'C174')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C175', N'化纤织造及印染精加工', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1751', N'化纤织造加工', N'4', N'C175')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1752', N'化纤织物染整精加工', N'4', N'C175')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C176', N'针织或钩针编织物及其制品制造', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1761', N'针织或钩针编织物织造', N'4', N'C176')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1762', N'针织或钩针编织物印染精加工', N'4', N'C176')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1763', N'针织或钩针编织品制造', N'4', N'C176')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C177', N'家用纺织制成品制造', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1771', N'床上用品制造', N'4', N'C177')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1772', N'毛巾类制品制造', N'4', N'C177')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1773', N'窗帘、布艺类产品制造', N'4', N'C177')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1779', N'其他家用纺织制成品制造', N'4', N'C177')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C178', N'非家用纺织制成品制造', N'3', N'C17')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1781', N'非织造布制造', N'4', N'C178')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1782', N'绳、索、缆制造', N'4', N'C178')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1783', N'纺织带和帘子布制造', N'4', N'C178')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1784', N'篷、帆布制造', N'4', N'C178')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1789', N'其他非家用纺织制成品制造', N'4', N'C178')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C18', N'纺织服装、服饰业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C181', N'机织服装制造', N'3', N'C18')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1810', N'机织服装制造', N'4', N'C181')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C182', N'针织或钩针编织服装制造', N'3', N'C18')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1820', N'针织或钩针编织服装制造', N'4', N'C182')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C183', N'服饰制造', N'3', N'C18')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1830', N'服饰制造', N'4', N'C183')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C19', N'皮革、毛皮、羽毛及其制品和制鞋业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C191', N'皮革鞣制加工', N'3', N'C19')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1910', N'皮革鞣制加工', N'4', N'C191')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C192', N'皮革制品制造', N'3', N'C19')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1921', N'皮革服装制造', N'4', N'C192')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1922', N'皮箱、包（袋）制造', N'4', N'C192')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1923', N'皮手套及皮装饰制品制造', N'4', N'C192')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1929', N'其他皮革制品制造', N'4', N'C192')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C193', N'毛皮鞣制及制品加工', N'3', N'C19')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1931', N'毛皮鞣制加工', N'4', N'C193')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1932', N'毛皮服装加工', N'4', N'C193')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1939', N'其他毛皮制品加工', N'4', N'C193')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C194', N'羽毛(绒)加工及制品制造', N'3', N'C19')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1941', N'羽毛（绒）加工', N'4', N'C194')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1942', N'羽毛（绒）制品加工', N'4', N'C194')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C195', N'制鞋业', N'3', N'C19')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1951', N'纺织面料鞋制造', N'4', N'C195')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1952', N'皮鞋制造', N'4', N'C195')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1953', N'塑料鞋制造', N'4', N'C195')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1954', N'橡胶鞋制造', N'4', N'C195')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C1959', N'其他制鞋业', N'4', N'C195')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C20', N'木材加工和木、竹、藤、棕、草制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C201', N'木材加工', N'3', N'C20')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2011', N'锯材加工', N'4', N'C201')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2012', N'木片加工', N'4', N'C201')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2013', N'单板加工', N'4', N'C201')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2019', N'其他木材加工', N'4', N'C201')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C202', N'人造板制造', N'3', N'C20')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2021', N'胶合板制造', N'4', N'C202')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2022', N'纤维板制造', N'4', N'C202')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2023', N'刨花板制造', N'4', N'C202')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2029', N'其他人造板制造', N'4', N'C202')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C203', N'木制品制造', N'3', N'C20')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2031', N'建筑用木料及木材组件加工', N'4', N'C203')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2032', N'木门窗、楼梯制造', N'4', N'C203')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2033', N'地板制造', N'4', N'C203')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2034', N'木制容器制造', N'4', N'C203')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2039', N'软木制品及其他木制品制造', N'4', N'C203')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C204', N'竹、藤、棕、草等制品制造', N'3', N'C20')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2041', N'竹制品制造', N'4', N'C204')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2042', N'藤制品制造', N'4', N'C204')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2043', N'棕制品制造', N'4', N'C204')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2049', N'草及其他制品制造', N'4', N'C204')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C21', N'家具制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C211', N'木质家具制造', N'3', N'C21')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2110', N'木质家具制造', N'4', N'C211')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C212', N'竹、藤家具制造', N'3', N'C21')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2120', N'竹、藤家具制造', N'4', N'C212')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C213', N'金属家具制造', N'3', N'C21')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2130', N'金属家具制造', N'4', N'C213')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C214', N'塑料家具制造', N'3', N'C21')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2140', N'塑料家具制造', N'4', N'C214')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C219', N'其他家具制造', N'3', N'C21')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2190', N'其他家具制造', N'4', N'C219')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C22', N'造纸和纸制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C221', N'纸浆制造', N'3', N'C22')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2211', N'木竹浆制造', N'4', N'C221')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2212', N'非木竹浆制造', N'4', N'C221')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C222', N'造纸', N'3', N'C22')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2221', N'机制纸及纸板制造', N'4', N'C222')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2222', N'手工纸制造', N'4', N'C222')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2223', N'加工纸制造', N'4', N'C222')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C223', N'纸制品制造', N'3', N'C22')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2231', N'纸和纸板容器制造', N'4', N'C223')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2239', N'其他纸制品制造', N'4', N'C223')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C23', N'印刷和记录媒介复制业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C231', N'印刷', N'3', N'C23')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2311', N'书、报刊印刷', N'4', N'C231')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2312', N'本册印制', N'4', N'C231')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2319', N'包装装潢及其他印刷', N'4', N'C231')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C232', N'装订及印刷相关服务', N'3', N'C23')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2320', N'装订及印刷相关服务', N'4', N'C232')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C233', N'记录媒介复制', N'3', N'C23')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2330', N'记录媒介复制', N'4', N'C233')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C24', N'文教、工美、体育和娱乐用品制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C241', N'文教办公用品制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2411', N'文具制造', N'4', N'C241')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2412', N'笔的制造', N'4', N'C241')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2413', N'教学用模型及教具制造', N'4', N'C241')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2414', N'墨水、墨汁制造', N'4', N'C241')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2419', N'其他文教办公用品制造', N'4', N'C241')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C242', N'乐器制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2421', N'中乐器制造', N'4', N'C242')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2422', N'西乐器制造', N'4', N'C242')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2423', N'电子乐器制造', N'4', N'C242')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2429', N'其他乐器及零件制造', N'4', N'C242')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C243', N'工艺美术品制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2431', N'雕塑工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2432', N'金属工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2433', N'漆器工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2434', N'花画工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2435', N'天然植物纤维编织工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2436', N'抽纱刺绣工艺品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2437', N'地毯、挂毯制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2438', N'珠宝首饰及有关物品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2439', N'其他工艺美术品制造', N'4', N'C243')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C244', N'体育用品制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2441', N'球类制造', N'4', N'C244')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2442', N'体育器材及配件制造', N'4', N'C244')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2443', N'训练健身器材制造', N'4', N'C244')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2444', N'运动防护用具制造', N'4', N'C244')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2449', N'其他体育用品制造', N'4', N'C244')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C245', N'玩具制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2450', N'玩具制造', N'4', N'C245')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C246', N'游艺器材及娱乐用品制造', N'3', N'C24')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2461', N'露天游乐场所游乐设备制造', N'4', N'C246')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2462', N'游艺用品及室内游艺器材制造', N'4', N'C246')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2469', N'其他娱乐用品制造', N'4', N'C246')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C25', N'石油加工、炼焦和核燃料加工业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C251', N'精炼石油产品制造', N'3', N'C25')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2511', N'原油加工及石油制品制造', N'4', N'C251')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2512', N'人造原油制造', N'4', N'C251')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C252', N'炼焦', N'3', N'C25')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2520', N'炼焦', N'4', N'C252')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C253', N'核燃料加工', N'3', N'C25')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2530', N'核燃料加工', N'4', N'C253')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C26', N'化学原料和化学制品制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C261', N'基础化学原料制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2611', N'无机酸制造', N'4', N'C261')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2612', N'无机碱制造', N'4', N'C261')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2613', N'无机盐制造', N'4', N'C261')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2614', N'有机化学原料制造', N'4', N'C261')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2619', N'其他基础化学原料制造', N'4', N'C261')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C262', N'肥料制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2621', N'氮肥制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2622', N'磷肥制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2623', N'钾肥制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2624', N'复混肥料制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2625', N'有机肥料及微生物肥料制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2629', N'其他肥料制造', N'4', N'C262')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C263', N'农药制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2631', N'化学农药制造', N'4', N'C263')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2632', N'生物化学农药及微生物农药制造', N'4', N'C263')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C264', N'涂料、油墨、颜料及类似产品制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2641', N'涂料制造', N'4', N'C264')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2642', N'油墨及类似产品制造', N'4', N'C264')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2643', N'颜料制造', N'4', N'C264')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2644', N'染料制造', N'4', N'C264')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2645', N'密封用填料及类似品制造', N'4', N'C264')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C265', N'合成材料制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2651', N'初级形态塑料及合成树脂制造', N'4', N'C265')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2652', N'合成橡胶制造', N'4', N'C265')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2653', N'合成纤维单（聚合）体制造', N'4', N'C265')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2659', N'其他合成材料制造', N'4', N'C265')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C266', N'专用化学产品制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2661', N'化学试剂和助剂制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2662', N'专项化学用品制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2663', N'林产化学产品制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2664', N'信息化学品制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2665', N'环境污染处理专用药剂材料制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2666', N'动物胶制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2669', N'其他专用化学产品制造', N'4', N'C266')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C267', N'炸药、火工及焰火产品制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2671', N'炸药及火工产品制造', N'4', N'C267')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2672', N'焰火、鞭炮产品制造', N'4', N'C267')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C268', N'日用化学产品制造', N'3', N'C26')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2681', N'肥皂及合成洗涤剂制造', N'4', N'C268')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2682', N'化妆品制造', N'4', N'C268')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2683', N'口腔清洁用品制造', N'4', N'C268')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2684', N'香料、香精制造', N'4', N'C268')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2689', N'其他日用化学产品制造', N'4', N'C268')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C27', N'医药制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C271', N'化学药品原料药制造', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2710', N'化学药品原料药制造', N'4', N'C271')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C272', N'化学药品制剂制造', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2720', N'化学药品制剂制造', N'4', N'C272')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C273', N'中药饮片加工', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2730', N'中药饮片加工', N'4', N'C273')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C274', N'中成药生产', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2740', N'中成药生产', N'4', N'C274')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C275', N'兽用药品制造', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2750', N'兽用药品制造', N'4', N'C275')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C276', N'生物药品制造', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2760', N'生物药品制造', N'4', N'C276')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C277', N'卫生材料及医药用品制造', N'3', N'C27')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2770', N'卫生材料及医药用品制造', N'4', N'C277')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C28', N'化学纤维制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C281', N'纤维素纤维原料及纤维制造', N'3', N'C28')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2811', N'化纤浆粕制造', N'4', N'C281')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2812', N'人造纤维（纤维素纤维）制造', N'4', N'C281')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C282', N'合成纤维制造', N'3', N'C28')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2821', N'锦纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2822', N'涤纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2823', N'腈纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2824', N'维纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2825', N'丙纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2826', N'氨纶纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2829', N'其他合成纤维制造', N'4', N'C282')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C29', N'橡胶和塑料制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C291', N'橡胶制品业', N'3', N'C29')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2911', N'轮胎制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2912', N'橡胶板、管、带制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2913', N'橡胶零件制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2914', N'再生橡胶制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2915', N'日用及医用橡胶制品制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2919', N'其他橡胶制品制造', N'4', N'C291')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C292', N'塑料制品业', N'3', N'C29')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2921', N'塑料薄膜制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2922', N'塑料板、管、型材制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2923', N'塑料丝、绳及编织品制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2924', N'泡沫塑料制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2925', N'塑料人造革、合成革制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2926', N'塑料包装箱及容器制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2927', N'日用塑料制品制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2928', N'塑料零件制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C2929', N'其他塑料制品制造', N'4', N'C292')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C30', N'非金属矿物制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C301', N'水泥、石灰和石膏制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3011', N'水泥制造', N'4', N'C301')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3012', N'石灰和石膏制造', N'4', N'C301')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C302', N'石膏、水泥制品及类似制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3021', N'水泥制品制造', N'4', N'C302')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3022', N'砼结构构件制造', N'4', N'C302')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3023', N'石棉水泥制品制造', N'4', N'C302')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3024', N'轻质建筑材料制造', N'4', N'C302')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3029', N'其他水泥类似制品制造', N'4', N'C302')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C303', N'砖瓦、石材等建筑材料制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3031', N'粘土砖瓦及建筑砌块制造', N'4', N'C303')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3032', N'建筑陶瓷制品制造', N'4', N'C303')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3033', N'建筑用石加工', N'4', N'C303')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3034', N'防水建筑材料制造', N'4', N'C303')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3035', N'隔热和隔音材料制造', N'4', N'C303')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3039', N'其他建筑材料制造', N'4', N'C303')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C304', N'玻璃制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3041', N'平板玻璃制造', N'4', N'C304')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3049', N'其他玻璃制造', N'4', N'C304')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C305', N'玻璃制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3051', N'技术玻璃制品制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3052', N'光学玻璃制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3053', N'玻璃仪器制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3054', N'日用玻璃制品制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3055', N'玻璃包装容器制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3056', N'玻璃保温容器制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3057', N'制镜及类似品加工', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3059', N'其他玻璃制品制造', N'4', N'C305')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C306', N'玻璃纤维和玻璃纤维增强塑料制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3061', N'玻璃纤维及制品制造', N'4', N'C306')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3062', N'玻璃纤维增强塑料制品制造', N'4', N'C306')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C307', N'陶瓷制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3071', N'卫生陶瓷制品制造', N'4', N'C307')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3072', N'特种陶瓷制品制造', N'4', N'C307')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3073', N'日用陶瓷制品制造', N'4', N'C307')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3079', N'园林、陈设艺术及其他陶瓷制品制造', N'4', N'C307')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C308', N'耐火材料制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3081', N'石棉制品制造', N'4', N'C308')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3082', N'云母制品制造', N'4', N'C308')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3089', N'耐火陶瓷制品及其他耐火材料制造', N'4', N'C308')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C309', N'石墨及其他非金属矿物制品制造', N'3', N'C30')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3091', N'石墨及碳素制品制造', N'4', N'C309')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3099', N'其他非金属矿物制品制造', N'4', N'C309')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C31', N'黑色金属冶炼和压延加工业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C311', N'炼铁', N'3', N'C31')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3110', N'炼铁', N'4', N'C311')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C312', N'炼钢', N'3', N'C31')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3120', N'炼钢', N'4', N'C312')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C313', N'黑色金属铸造', N'3', N'C31')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3130', N'黑色金属铸造', N'4', N'C313')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C314', N'钢压延加工', N'3', N'C31')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3140', N'钢压延加工', N'4', N'C314')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C315', N'铁合金冶炼', N'3', N'C31')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3150', N'铁合金冶炼', N'4', N'C315')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C32', N'有色金属冶炼和压延加工业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C321', N'常用有色金属冶炼', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3211', N'铜冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3212', N'铅锌冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3213', N'镍钴冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3214', N'锡冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3215', N'锑冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3216', N'铝冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3217', N'镁冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3219', N'其他常用有色金属冶炼', N'4', N'C321')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C322', N'贵金属冶炼', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3221', N'金冶炼', N'4', N'C322')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3222', N'银冶炼', N'4', N'C322')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3229', N'其他贵金属冶炼', N'4', N'C322')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C323', N'稀有稀土金属冶炼', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3231', N'钨钼冶炼', N'4', N'C323')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3232', N'稀土金属冶炼', N'4', N'C323')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3239', N'其他稀有金属冶炼', N'4', N'C323')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C324', N'有色金属合金制造', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3240', N'有色金属合金制造', N'4', N'C324')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C325', N'有色金属铸造', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3250', N'有色金属铸造', N'4', N'C325')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C326', N'有色金属压延加工', N'3', N'C32')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3261', N'铜压延加工', N'4', N'C326')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3262', N'铝压延加工', N'4', N'C326')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3263', N'贵金属压延加工', N'4', N'C326')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3264', N'稀有稀土金属压延加工', N'4', N'C326')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3269', N'其他有色金属压延加工', N'4', N'C326')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C33', N'金属制品业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C331', N'结构性金属制品制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3311', N'金属结构制造', N'4', N'C331')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3312', N'金属门窗制造', N'4', N'C331')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C332', N'金属工具制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3321', N'切削工具制造', N'4', N'C332')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3322', N'手工具制造', N'4', N'C332')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3323', N'农用及园林用金属工具制造', N'4', N'C332')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3324', N'刀剪及类似日用金属工具制造', N'4', N'C332')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3329', N'其他金属工具制造', N'4', N'C332')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C333', N'集装箱及金属包装容器制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3331', N'集装箱制造', N'4', N'C333')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3332', N'金属压力容器制造', N'4', N'C333')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3333', N'金属包装容器制造', N'4', N'C333')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C334', N'金属丝绳及其制品制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3340', N'金属丝绳及其制品制造', N'4', N'C334')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C335', N'建筑、安全用金属制品制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3351', N'建筑、家具用金属配件制造', N'4', N'C335')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3352', N'建筑装饰及水暖管道零件制造', N'4', N'C335')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3353', N'安全、消防用金属制品制造', N'4', N'C335')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3359', N'其他建筑、安全用金属制品制造', N'4', N'C335')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C336', N'金属表面处理及热处理加工', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3360', N'金属表面处理及热处理加工', N'4', N'C336')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C337', N'搪瓷制品制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3371', N'生产专用搪瓷制品制造', N'4', N'C337')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3372', N'建筑装饰搪瓷制品制造', N'4', N'C337')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3373', N'搪瓷卫生洁具制造', N'4', N'C337')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3379', N'搪瓷日用品及其他搪瓷制品制造', N'4', N'C337')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C338', N'金属制日用品制造', N'3', N'C33')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3381', N'金属制厨房用器具制造', N'4', N'C338')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3382', N'金属制餐具和器皿制造', N'4', N'C338')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3383', N'金属制卫生器具制造', N'4', N'C338')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3389', N'其他金属制日用品制造', N'4', N'C338')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C339', N'其他金属制品制造', N'3', N'C33')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3391', N'锻件及粉末冶金制品制造', N'4', N'C339')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3392', N'交通及公共管理用金属标牌制造', N'4', N'C339')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3399', N'其他未列明金属制品制造', N'4', N'C339')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C34', N'通用设备制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C341', N'锅炉及原动设备制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3411', N'锅炉及辅助设备制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3412', N'内燃机及配件制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3413', N'汽轮机及辅机制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3414', N'水轮机及辅机制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3415', N'风能原动设备制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3419', N'其他原动设备制造', N'4', N'C341')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C342', N'金属加工机械制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3421', N'金属切削机床制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3422', N'金属成形机床制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3423', N'铸造机械制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3424', N'金属切割及焊接设备制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3425', N'机床附件制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3429', N'其他金属加工机械制造', N'4', N'C342')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C343', N'物料搬运设备制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3431', N'轻小型起重设备制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3432', N'起重机制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3433', N'生产专用车辆制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3434', N'连续搬运设备制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3435', N'电梯、自动扶梯及升降机制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3439', N'其他物料搬运设备制造', N'4', N'C343')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C344', N'泵、阀门、压缩机及类似机械制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3441', N'泵及真空设备制造', N'4', N'C344')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3442', N'气体压缩机械制造', N'4', N'C344')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3443', N'阀门和旋塞制造', N'4', N'C344')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3444', N'液压和气压动力机械及元件制造', N'4', N'C344')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C345', N'轴承、齿轮和传动部件制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3451', N'轴承制造', N'4', N'C345')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3452', N'齿轮及齿轮减、变速箱制造', N'4', N'C345')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3459', N'其他传动部件制造', N'4', N'C345')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C346', N'烘炉、风机、衡器、包装等设备制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3461', N'烘炉、熔炉及电炉制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3462', N'风机、风扇制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3463', N'气体、液体分离及纯净设备制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3464', N'制冷、空调设备制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3465', N'风动和电动工具制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3466', N'喷枪及类似器具制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3467', N'衡器制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3468', N'包装专用设备制造', N'4', N'C346')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C347', N'文化、办公用机械制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3471', N'电影机械制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3472', N'幻灯及投影设备制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3473', N'照相机及器材制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3474', N'复印和胶印设备制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3475', N'计算器及货币专用设备制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3479', N'其他文化、办公用机械制造', N'4', N'C347')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C348', N'通用零部件制造', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3481', N'金属密封件制造', N'4', N'C348')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3482', N'紧固件制造', N'4', N'C348')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3483', N'弹簧制造', N'4', N'C348')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3484', N'机械零部件加工', N'4', N'C348')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3489', N'其他通用零部件制造', N'4', N'C348')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C349', N'其他通用设备制造业', N'3', N'C34')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3490', N'其他通用设备制造业', N'4', N'C349')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C35', N'专用设备制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C351', N'采矿、冶金、建筑专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3511', N'矿山机械制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3512', N'石油钻采专用设备制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3513', N'建筑工程用机械制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3514', N'海洋工程专用设备制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3515', N'建筑材料生产专用机械制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3516', N'冶金专用设备制造', N'4', N'C351')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C352', N'化工、木材、非金属加工专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3521', N'炼油、化工生产专用设备制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3522', N'橡胶加工专用设备制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3523', N'塑料加工专用设备制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3524', N'木材加工机械制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3525', N'模具制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3529', N'其他非金属加工专用设备制造', N'4', N'C352')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C353', N'食品、饮料、烟草及饲料生产专用设备制造　　　', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3531', N'食品、酒、饮料及茶生产专用设备制造', N'4', N'C353')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3532', N'农副食品加工专用设备制造', N'4', N'C353')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3533', N'烟草生产专用设备制造', N'4', N'C353')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3534', N'饲料生产专用设备制造', N'4', N'C353')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C354', N'印刷、制药、日化及日用品生产专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3541', N'制浆和造纸专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3542', N'印刷专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3543', N'日用化工专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3544', N'制药专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3545', N'照明器具生产专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3546', N'玻璃、陶瓷和搪瓷制品生产专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3549', N'其他日用品生产专用设备制造', N'4', N'C354')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C355', N'纺织、服装和皮革加工专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3551', N'纺织专用设备制造', N'4', N'C355')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3552', N'皮革、毛皮及其制品加工专用设备制造', N'4', N'C355')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3553', N'缝制机械制造', N'4', N'C355')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3554', N'洗涤机械制造', N'4', N'C355')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C356', N'电子和电工机械专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3561', N'电工机械专用设备制造', N'4', N'C356')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3562', N'电子工业专用设备制造', N'4', N'C356')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C357', N'农、林、牧、渔专用机械制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3571', N'拖拉机制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3572', N'机械化农业及园艺机具制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3573', N'营林及木竹采伐机械制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3574', N'畜牧机械制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3575', N'渔业机械制造', N'4', N'C357')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3576', N'农林牧渔机械配件制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3577', N'棉花加工机械制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3579', N'其他农、林、牧、渔业机械制造', N'4', N'C357')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C358', N'医疗仪器设备及器械制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3581', N'医疗诊断、监护及治疗设备制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3582', N'口腔科用设备及器具制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3583', N'医疗实验室及医用消毒设备和器具制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3584', N'医疗、外科及兽医用器械制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3585', N'机械治疗及病房护理设备制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3586', N'假肢、人工器官及植（介）入器械制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3589', N'其他医疗设备及器械制造', N'4', N'C358')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C359', N'环保、社会公共服务及其他专用设备制造', N'3', N'C35')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3591', N'环境保护专用设备制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3592', N'地质勘查专用设备制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3593', N'邮政专用机械及器材制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3594', N'商业、饮食、服务专用设备制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3595', N'社会公共安全设备及器材制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3596', N'交通安全、管制及类似专用设备制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3597', N'水资源专用机械制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3599', N'其他专用设备制造', N'4', N'C359')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C36', N'汽车制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C361', N'汽车整车制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3610', N'汽车整车制造', N'4', N'C361')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C362', N'改装汽车制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3620', N'改装汽车制造', N'4', N'C362')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C363', N'低速载货汽车制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3630', N'低速载货汽车制造', N'4', N'C363')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C364', N'电车制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3640', N'电车制造', N'4', N'C364')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C365', N'汽车车身、挂车制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3650', N'汽车车身、挂车制造', N'4', N'C365')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C366', N'汽车零部件及配件制造', N'3', N'C36')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3660', N'汽车零部件及配件制造', N'4', N'C366')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C37', N'铁路、船舶、航空航天和其他运输设备制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C371', N'铁路运输设备制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3711', N'铁路机车车辆及动车组制造', N'4', N'C371')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3712', N'窄轨机车车辆制造', N'4', N'C371')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3713', N'铁路机车车辆配件制造', N'4', N'C371')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3714', N'铁路专用设备及器材、配件制造', N'4', N'C371')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3719', N'其他铁路运输设备制造', N'4', N'C371')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C372', N'城市轨道交通设备制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3720', N'城市轨道交通设备制造', N'4', N'C372')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C373', N'船舶及相关装置制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3731', N'金属船舶制造', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3732', N'非金属船舶制造', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3733', N'娱乐船和运动船制造', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3734', N'船用配套设备制造', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3735', N'船舶改装与拆除', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3739', N'航标器材及其他相关装置制造', N'4', N'C373')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C374', N'航空、航天器及设备制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3741', N'飞机制造', N'4', N'C374')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3742', N'航天器制造', N'4', N'C374')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3743', N'航空、航天相关设备制造', N'4', N'C374')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3749', N'其他航空航天器制造', N'4', N'C374')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C375', N'摩托车制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3751', N'摩托车整车制造', N'4', N'C375')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3752', N'摩托车零部件及配件制造', N'4', N'C375')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C376', N'自行车制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3761', N'脚踏自行车及残疾人座车制造', N'4', N'C376')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3762', N'助动自行车制造', N'4', N'C376')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C377', N'非公路休闲车及零配件制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3770', N'非公路休闲车及零配件制造', N'4', N'C377')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C379', N'潜水救捞及其他未列明运输设备制造', N'3', N'C37')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3791', N'潜水及水下救捞装备制造', N'4', N'C379')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3799', N'其他未列明运输设备制造', N'4', N'C379')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C38', N'电气机械和器材制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C381', N'电机制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3811', N'发电机及发电机组制造', N'4', N'C381')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3812', N'电动机制造', N'4', N'C381')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3819', N'微电机及其他电机制造', N'4', N'C381')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C382', N'输配电及控制设备制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3821', N'变压器、整流器和电感器制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3822', N'电容器及其配套设备制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3823', N'配电开关控制设备制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3824', N'电力电子元器件制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3825', N'光伏设备及元器件制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3829', N'其他输配电及控制设备制造', N'4', N'C382')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C383', N'电线、电缆、光缆及电工器材制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3831', N'电线、电缆制造', N'4', N'C383')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3832', N'光纤、光缆制造', N'4', N'C383')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3833', N'绝缘制品制造', N'4', N'C383')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3839', N'其他电工器材制造', N'4', N'C383')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C384', N'电池制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3841', N'锂离子电池制造', N'4', N'C384')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3842', N'镍氢电池制造', N'4', N'C384')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3849', N'其他电池制造', N'4', N'C384')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C385', N'家用电力器具制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3851', N'家用制冷电器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3852', N'家用空气调节器制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3853', N'家用通风电器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3854', N'家用厨房电器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3855', N'家用清洁卫生电器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3856', N'家用美容、保健电器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3857', N'家用电力器具专用配件制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3859', N'其他家用电力器具制造', N'4', N'C385')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C386', N'非电力家用器具制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3861', N'燃气、太阳能及类似能源家用器具制造', N'4', N'C386')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3869', N'其他非电力家用器具制造', N'4', N'C386')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C387', N'照明器具制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3871', N'电光源制造', N'4', N'C387')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3872', N'照明灯具制造', N'4', N'C387')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3879', N'灯用电器附件及其他照明器具制造', N'4', N'C387')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C389', N'其他电气机械及器材制造', N'3', N'C38')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3891', N'电气信号设备装置制造', N'4', N'C389')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3899', N'其他未列明电气机械及器材制造', N'4', N'C389')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C39', N'计算机、通信和其他电子设备制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C391', N'计算机制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3911', N'计算机整机制造', N'4', N'C391')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3912', N'计算机零部件制造', N'4', N'C391')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3913', N'计算机外围设备制造', N'4', N'C391')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3919', N'其他计算机制造', N'4', N'C391')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C392', N'通信设备制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3921', N'通信系统设备制造', N'4', N'C392')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3922', N'通信终端设备制造', N'4', N'C392')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C393', N'广播电视设备制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3931', N'广播电视节目制作及发射设备制造', N'4', N'C393')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3932', N'广播电视接收设备及器材制造', N'4', N'C393')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3939', N'应用电视设备及其他广播电视设备制造', N'4', N'C393')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C394', N'雷达及配套设备制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3940', N'雷达及配套设备制造', N'4', N'C394')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C395', N'视听设备制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3951', N'电视机制造', N'4', N'C395')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3952', N'音响设备制造', N'4', N'C395')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3953', N'影视录放设备制造', N'4', N'C395')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C396', N'电子器件制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3961', N'电子真空器件制造', N'4', N'C396')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3962', N'半导体分立器件制造', N'4', N'C396')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3963', N'集成电路制造', N'4', N'C396')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3969', N'光电子器件及其他电子器件制造', N'4', N'C396')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C397', N'电子元件制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3971', N'电子元件及组件制造', N'4', N'C397')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3972', N'印制电路板制造', N'4', N'C397')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C399', N'其他电子设备制造', N'3', N'C39')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C3990', N'其他电子设备制造', N'4', N'C399')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C40', N'仪器仪表制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C401', N'通用仪器仪表制造', N'3', N'C40')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4011', N'工业自动控制系统装置制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4012', N'电工仪器仪表制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4013', N'绘图、计算及测量仪器制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4014', N'实验分析仪器制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4015', N'试验机制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4019', N'供应用仪表及其他通用仪器制造', N'4', N'C401')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C402', N'专用仪器仪表制造', N'3', N'C40')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4021', N'环境监测专用仪器仪表制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4022', N'运输设备及生产用计数仪表制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4023', N'导航、气象及海洋专用仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4024', N'农林牧渔专用仪器仪表制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4025', N'地质勘探和地震专用仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4026', N'教学专用仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4027', N'核子及核辐射测量仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4028', N'电子测量仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4029', N'其他专用仪器制造', N'4', N'C402')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C403', N'钟表与计时仪器制造', N'3', N'C40')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4030', N'钟表与计时仪器制造', N'4', N'C403')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C404', N'光学仪器及眼镜制造', N'3', N'C40')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4041', N'光学仪器制造', N'4', N'C404')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4042', N'眼镜制造', N'4', N'C404')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C409', N'其他仪器仪表制造业', N'3', N'C40')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4090', N'其他仪器仪表制造业', N'4', N'C409')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C41', N'其他制造业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C411', N'日用杂品制造', N'3', N'C41')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4111', N'鬃毛加工、制刷及清扫工具制造', N'4', N'C411')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4119', N'其他日用杂品制造', N'4', N'C411')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C412', N'煤制品制造', N'3', N'C41')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4120', N'煤制品制造', N'4', N'C412')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C413', N'核辐射加工', N'3', N'C41')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4130', N'核辐射加工', N'4', N'C413')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C419', N'其他未列明制造业', N'3', N'C41')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4190', N'其他未列明制造业', N'4', N'C419')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C42', N'废弃资源综合利用业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C421', N'金属废料和碎屑加工处理', N'3', N'C42')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4210', N'金属废料和碎屑加工处理', N'4', N'C421')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C422', N'非金属废料和碎屑加工处理', N'3', N'C42')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4220', N'非金属废料和碎屑加工处理', N'4', N'C422')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C43', N'金属制品、机械和设备修理业', N'2', N'C')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C431', N'金属制品修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4310', N'金属制品修理', N'4', N'C431')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C432', N'通用设备修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4320', N'通用设备修理', N'4', N'C432')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C433', N'专用设备修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4330', N'专用设备修理', N'4', N'C433')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C434', N'铁路、船舶、航空航天等运输设备修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4341', N'铁路运输设备修理', N'4', N'C434')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4342', N'船舶修理', N'4', N'C434')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4343', N'航空航天器修理', N'4', N'C434')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4349', N'其他运输设备修理', N'4', N'C434')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C435', N'电气设备修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4350', N'电气设备修理', N'4', N'C435')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C436', N'仪器仪表修理', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4360', N'仪器仪表修理', N'4', N'C436')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C439', N'其他机械和设备修理业', N'3', N'C43')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'C4390', N'其他机械和设备修理业', N'4', N'C439')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D', N'电力、热力、燃气及水生产和供应业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D44', N'电力、热力生产和供应业', N'2', N'D')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D441', N'电力生产', N'3', N'D44')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4411', N'火力发电', N'4', N'D441')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4412', N'水力发电', N'4', N'D441')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4413', N'核力发电', N'4', N'D441')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4414', N'风力发电', N'4', N'D441')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4415', N'太阳能发电', N'4', N'D441')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4419', N'其他电力生产', N'4', N'D441')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D442', N'电力供应', N'3', N'D44')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4420', N'电力供应', N'4', N'D442')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D443', N'热力生产和供应', N'3', N'D44')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4430', N'热力生产和供应', N'4', N'D443')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D45', N'燃气生产和供应业', N'2', N'D')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D450', N'燃气生产和供应业', N'3', N'D45')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4500', N'燃气生产和供应业', N'4', N'D450')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D46', N'水的生产和供应业', N'2', N'D')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D461', N'自来水生产和供应', N'3', N'D46')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4610', N'自来水生产和供应', N'4', N'D461')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D462', N'污水处理及其再生利用', N'3', N'D46')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4620', N'污水处理及其再生利用', N'4', N'D462')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D469', N'其他水的处理、利用与分配', N'3', N'D46')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'D4690', N'其他水的处理、利用与分配', N'4', N'D469')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E', N'建筑业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E47', N'房屋建筑业', N'2', N'E')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E470', N'房屋建筑业', N'3', N'E47')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4700', N'房屋建筑业', N'4', N'E470')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E48', N'土木工程建筑业', N'2', N'E')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E481', N'铁路、道路、隧道和桥梁工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4811', N'铁路工程建筑', N'4', N'E481')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4812', N'公路工程建筑', N'4', N'E481')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4813', N'市政道路工程建筑', N'4', N'E481')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4819', N'其他道路、隧道和桥梁工程建筑', N'4', N'E481')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E482', N'水利和内河港口工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4821', N'水源及供水设施工程建筑', N'4', N'E482')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4822', N'河湖治理及防洪设施工程建筑', N'4', N'E482')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4823', N'港口及航运设施工程建筑', N'4', N'E482')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E483', N'海洋工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4830', N'海洋工程建筑', N'4', N'E483')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E484', N'工矿工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4840', N'工矿工程建筑', N'4', N'E484')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E485', N'架线和管道工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4851', N'架线及设备工程建筑', N'4', N'E485')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4852', N'管道工程建筑', N'4', N'E485')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E489', N'其他土木工程建筑', N'3', N'E48')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4890', N'其他土木工程建筑', N'4', N'E489')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E49', N'建筑安装业', N'2', N'E')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E491', N'电气安装', N'3', N'E49')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4910', N'电气安装', N'4', N'E491')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E492', N'管道和设备安装', N'3', N'E49')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4920', N'管道和设备安装', N'4', N'E492')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E499', N'其他建筑安装业', N'3', N'E49')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E4990', N'其他建筑安装业', N'4', N'E499')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E50', N'建筑装饰和其他建筑业', N'2', N'E')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E501', N'建筑装饰业', N'3', N'E50')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E5010', N'建筑装饰业', N'4', N'E501')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E502', N'工程准备活动', N'3', N'E50')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E5021', N'建筑物拆除活动', N'4', N'E502')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E5029', N'其他工程准备活动', N'4', N'E502')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E503', N'提供施工设备服务', N'3', N'E50')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E5030', N'提供施工设备服务', N'4', N'E503')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E509', N'其他未列明建筑业', N'3', N'E50')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'E5090', N'其他未列明建筑业', N'4', N'E509')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F', N'批发和零售业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F51', N'批发业', N'2', N'F')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F511', N'农、林、牧产品批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5111', N'谷物、豆及薯类批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5112', N'种子批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5113', N'饲料批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5114', N'棉、麻批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5115', N'林业产品批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5116', N'牲畜批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5119', N'其他农牧产品批发', N'4', N'F511')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F512', N'食品、饮料及烟草制品批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5121', N'米、面制品及食用油批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5122', N'糕点、糖果及糖批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5123', N'果品、蔬菜批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5124', N'肉、禽、蛋、奶及水产品批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5125', N'盐及调味品批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5126', N'营养和保健品批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5127', N'酒、饮料及茶叶批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5128', N'烟草制品批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5129', N'其他食品批发', N'4', N'F512')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F513', N'纺织、服装及家庭用品批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5131', N'纺织品、针织品及原料批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5132', N'服装批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5133', N'鞋帽批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5134', N'化妆品及卫生用品批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5135', N'厨房、卫生间用具及日用杂货批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5136', N'灯具、装饰物品批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5137', N'家用电器批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5139', N'其他家庭用品批发', N'4', N'F513')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F514', N'文化、体育用品及器材批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5141', N'文具用品批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5142', N'体育用品及器材批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5143', N'图书批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5144', N'报刊批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5145', N'音像制品及电子出版物批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5146', N'首饰、工艺品及收藏品批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5149', N'其他文化用品批发', N'4', N'F514')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F515', N'医药及医疗器材批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5151', N'西药批发', N'4', N'F515')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5152', N'中药批发', N'4', N'F515')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5153', N'医疗用品及器材批发', N'4', N'F515')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F516', N'矿产品、建材及化工产品批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5161', N'煤炭及制品批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5162', N'石油及制品批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5163', N'非金属矿及制品批发', N'4', N'F516')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5164', N'金属及金属矿批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5165', N'建材批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5166', N'化肥批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5167', N'农药批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5168', N'农用薄膜批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5169', N'其他化工产品批发', N'4', N'F516')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F517', N'机械设备、五金产品及电子产品批发', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5171', N'农业机械批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5172', N'汽车批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5173', N'汽车零配件批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5174', N'摩托车及零配件批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5175', N'五金产品批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5176', N'电气设备批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5177', N'计算机、软件及辅助设备批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5178', N'通讯及广播电视设备批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5179', N'其他机械设备及电子产品批发', N'4', N'F517')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F518', N'贸易经纪与代理', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5181', N'贸易代理', N'4', N'F518')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5182', N'拍卖', N'4', N'F518')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5189', N'其他贸易经纪与代理', N'4', N'F518')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F519', N'其他批发业', N'3', N'F51')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5191', N'再生物资回收与批发', N'4', N'F519')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5199', N'其他未列明批发业', N'4', N'F519')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F52', N'零售业', N'2', N'F')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F521', N'综合零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5211', N'百货零售', N'4', N'F521')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5212', N'超级市场零售', N'4', N'F521')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5219', N'其他综合零售', N'4', N'F521')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F522', N'食品、饮料及烟草制品专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5221', N'粮油零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5222', N'糕点、面包零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5223', N'果品、蔬菜零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5224', N'肉、禽、蛋、奶及水产品零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5225', N'营养和保健品零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5226', N'酒、饮料及茶叶零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5227', N'烟草制品零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5229', N'其他食品零售', N'4', N'F522')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F523', N'纺织、服装及日用品专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5231', N'纺织品及针织品零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5232', N'服装零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5233', N'鞋帽零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5234', N'化妆品及卫生用品零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5235', N'钟表、眼镜零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5236', N'箱、包零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5237', N'厨房用具及日用杂品零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5238', N'自行车零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5239', N'其他日用品零售', N'4', N'F523')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F524', N'文化、体育用品及器材专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5241', N'文具用品零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5242', N'体育用品及器材零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5243', N'图书、报刊零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5244', N'音像制品及电子出版物零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5245', N'珠宝首饰零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5246', N'工艺美术品及收藏品零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5247', N'乐器零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5248', N'照相器材零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5249', N'其他文化用品零售', N'4', N'F524')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F525', N'医药及医疗器材专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5251', N'药品零售', N'4', N'F525')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5252', N'医疗用品及器材零售', N'4', N'F525')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F526', N'汽车、摩托车、燃料及零配件专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5261', N'汽车零售', N'4', N'F526')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5262', N'汽车零配件零售', N'4', N'F526')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5263', N'摩托车及零配件零售', N'4', N'F526')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5264', N'机动车燃料零售', N'4', N'F526')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F527', N'家用电器及电子产品专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5271', N'家用视听设备零售', N'4', N'F527')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5272', N'日用家电设备零售', N'4', N'F527')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5273', N'计算机、软件及辅助设备零售', N'4', N'F527')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5274', N'通信设备零售', N'4', N'F527')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5279', N'其他电子产品零售', N'4', N'F527')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F528', N'五金、家具及室内装饰材料专门零售', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5281', N'五金零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5282', N'灯具零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5283', N'家具零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5284', N'涂料零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5285', N'卫生洁具零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5286', N'木质装饰材料零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5287', N'陶瓷、石材装饰材料零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5289', N'其他室内装饰材料零售', N'4', N'F528')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F529', N'货摊、无店铺及其他零售业', N'3', N'F52')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5291', N'货摊食品零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5292', N'货摊纺织、服装及鞋零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5293', N'货摊日用品零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5294', N'互联网零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5295', N'邮购及电视、电话零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5296', N'旧货零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5297', N'生活用燃料零售', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'F5299', N'其他未列明零售业', N'4', N'F529')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G', N'交通运输、仓储和邮政业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G53', N'铁路运输业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G531', N'铁路旅客运输', N'3', N'G53')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5310', N'铁路旅客运输', N'4', N'G531')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G532', N'铁路货物运输', N'3', N'G53')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5320', N'铁路货物运输', N'4', N'G532')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G533', N'铁路运输辅助活动', N'3', N'G53')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5331', N'客运火车站', N'4', N'G533')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5332', N'货运火车站', N'4', N'G533')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5339', N'其他铁路运输辅助活动', N'4', N'G533')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G54', N'道路运输业', N'2', N'G')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G541', N'城市公共交通运输', N'3', N'G54')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5411', N'公共电汽车客运', N'4', N'G541')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5412', N'城市轨道交通', N'4', N'G541')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5413', N'出租车客运', N'4', N'G541')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5419', N'其他城市公共交通运输', N'4', N'G541')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G542', N'公路旅客运输', N'3', N'G54')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5420', N'公路旅客运输', N'4', N'G542')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G543', N'道路货物运输', N'3', N'G54')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5430', N'道路货物运输', N'4', N'G543')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G544', N'道路运输辅助活动', N'3', N'G54')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5441', N'客运汽车站', N'4', N'G544')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5442', N'公路管理与养护', N'4', N'G544')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5449', N'其他道路运输辅助活动', N'4', N'G544')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G55', N'水上运输业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G551', N'水上旅客运输', N'3', N'G55')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5511', N'海洋旅客运输', N'4', N'G551')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5512', N'内河旅客运输', N'4', N'G551')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5513', N'客运轮渡运输', N'4', N'G551')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G552', N'水上货物运输', N'3', N'G55')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5521', N'远洋货物运输', N'4', N'G552')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5522', N'沿海货物运输', N'4', N'G552')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5523', N'内河货物运输', N'4', N'G552')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G553', N'水上运输辅助活动', N'3', N'G55')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5531', N'客运港口', N'4', N'G553')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5532', N'货运港口', N'4', N'G553')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5539', N'其他水上运输辅助活动', N'4', N'G553')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G56', N'航空运输业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G561', N'航空客货运输', N'3', N'G56')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5611', N'航空旅客运输', N'4', N'G561')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5612', N'航空货物运输', N'4', N'G561')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G562', N'通用航空服务', N'3', N'G56')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5620', N'通用航空服务', N'4', N'G562')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G563', N'航空运输辅助活动', N'3', N'G56')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5631', N'机场', N'4', N'G563')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5632', N'空中交通管理', N'4', N'G563')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5639', N'其他航空运输辅助活动', N'4', N'G563')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G57', N'管道运输业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G570', N'管道运输业', N'3', N'G57')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5700', N'管道运输业', N'4', N'G570')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G58', N'装卸搬运和运输代理业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G581', N'装卸搬运', N'3', N'G58')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5810', N'装卸搬运', N'4', N'G581')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G582', N'运输代理业', N'3', N'G58')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5821', N'货物运输代理', N'4', N'G582')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5822', N'旅客票务代理', N'4', N'G582')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5829', N'其他运输代理业', N'4', N'G582')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G59', N'仓储业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G591', N'谷物、棉花等农产品仓储', N'3', N'G59')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5911', N'谷物仓储', N'4', N'G591')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5912', N'棉花仓储', N'4', N'G591')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5919', N'其他农产品仓储', N'4', N'G591')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G599', N'其他仓储业', N'3', N'G59')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G5990', N'其他仓储业', N'4', N'G599')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G60', N'邮政业', N'2', N'G')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G601', N'邮政基本服务', N'3', N'G60')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G6010', N'邮政基本服务', N'4', N'G601')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G602', N'快递服务', N'3', N'G60')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'G6020', N'快递服务', N'4', N'G602')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H', N'住宿和餐饮业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H61', N'住宿业', N'2', N'H')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H611', N'旅游饭店', N'3', N'H61')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6110', N'旅游饭店', N'4', N'H611')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H612', N'一般旅馆', N'3', N'H61')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6120', N'一般旅馆', N'4', N'H612')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H619', N'其他住宿业', N'3', N'H61')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6190', N'其他住宿业', N'4', N'H619')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H62', N'餐饮业', N'2', N'H')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H621', N'正餐服务', N'3', N'H62')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6210', N'正餐服务', N'4', N'H621')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H622', N'快餐服务', N'3', N'H62')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6220', N'快餐服务', N'4', N'H622')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H623', N'饮料及冷饮服务', N'3', N'H62')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6231', N'茶馆服务', N'4', N'H623')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6232', N'咖啡馆服务', N'4', N'H623')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6233', N'酒吧服务', N'4', N'H623')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6239', N'其他饮料及冷饮服务', N'4', N'H623')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H629', N'其他餐饮业', N'3', N'H62')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6291', N'小吃服务', N'4', N'H629')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6292', N'餐饮配送服务', N'4', N'H629')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'H6299', N'其他未列明餐饮业', N'4', N'H629')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I', N'信息传输、软件和信息技术服务业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I63', N'电信、广播电视和卫星传输服务', N'2', N'I')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I631', N'电信', N'3', N'I63')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6311', N'固定电信服务', N'4', N'I631')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6312', N'移动电信服务', N'4', N'I631')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6319', N'其他电信服务', N'4', N'I631')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I632', N'广播电视传输服务', N'3', N'I63')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6321', N'有线广播电视传输服务', N'4', N'I632')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6322', N'无线广播电视传输服务', N'4', N'I632')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I633', N'卫星传输服务', N'3', N'I63')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6330', N'卫星传输服务', N'4', N'I633')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I64', N'互联网和相关服务', N'2', N'I')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I641', N'互联网接入及相关服务', N'3', N'I64')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6410', N'互联网接入及相关服务', N'4', N'I641')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I642', N'互联网信息服务', N'3', N'I64')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6420', N'互联网信息服务', N'4', N'I642')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I649', N'其他互联网服务', N'3', N'I64')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6490', N'其他互联网服务', N'4', N'I649')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I65', N'软件和信息技术服务业', N'2', N'I')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I651', N'软件开发', N'3', N'I65')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6510', N'软件开发', N'4', N'I651')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I652', N'信息系统集成服务', N'3', N'I65')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6520', N'信息系统集成服务', N'4', N'I652')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I653', N'信息技术咨询服务', N'3', N'I65')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6530', N'信息技术咨询服务', N'4', N'I653')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I654', N'数据处理和存储服务', N'3', N'I65')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6540', N'数据处理和存储服务', N'4', N'I654')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I655', N'集成电路设计', N'3', N'I65')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6550', N'集成电路设计', N'4', N'I655')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I659', N'其他信息技术服务业', N'3', N'I65')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6591', N'数字内容服务', N'4', N'I659')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6592', N'呼叫中心', N'4', N'I659')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'I6599', N'其他未列明信息技术服务业', N'4', N'I659')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J', N'金融业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J66', N'货币金融服务', N'2', N'J')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J661', N'中央银行服务', N'3', N'J66')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6610', N'中央银行服务', N'4', N'J661')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J662', N'货币银行服务', N'3', N'J66')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6620', N'货币银行服务', N'4', N'J662')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J663', N'非货币银行服务', N'3', N'J66')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6631', N'金融租赁服务', N'4', N'J663')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6632', N'财务公司', N'4', N'J663')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6633', N'典当', N'4', N'J663')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6639', N'其他非货币银行服务', N'4', N'J663')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J664', N'银行监管服务', N'3', N'J66')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6640', N'银行监管服务', N'4', N'J664')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J67', N'资本市场服务', N'2', N'J')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J671', N'证券市场服务', N'3', N'J67')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6711', N'证券市场管理服务', N'4', N'J671')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6712', N'证券经纪交易服务', N'4', N'J671')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6713', N'基金管理服务', N'4', N'J671')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J672', N'期货市场服务', N'3', N'J67')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6721', N'期货市场管理服务', N'4', N'J672')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6729', N'其他期货市场服务', N'4', N'J672')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J673', N'证券期货监管服务', N'3', N'J67')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6730', N'证券期货监管服务', N'4', N'J673')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J674', N'资本投资服务', N'3', N'J67')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6740', N'资本投资服务', N'4', N'J674')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J679', N'其他资本市场服务', N'3', N'J67')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6790', N'其他资本市场服务', N'4', N'J679')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J68', N'保险业', N'2', N'J')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J681', N'人身保险', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6811', N'人寿保险', N'4', N'J681')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6812', N'健康和意外保险', N'4', N'J681')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J682', N'财产保险', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6820', N'财产保险', N'4', N'J682')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J683', N'再保险', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6830', N'再保险', N'4', N'J683')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J684', N'养老金', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6840', N'养老金', N'4', N'J684')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J685', N'保险经纪与代理服务', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6850', N'保险经纪与代理服务', N'4', N'J685')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J686', N'保险监管服务', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6860', N'保险监管服务', N'4', N'J686')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J689', N'其他保险活动', N'3', N'J68')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6891', N'风险和损失评估', N'4', N'J689')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6899', N'其他未列明保险活动', N'4', N'J689')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J69', N'其他金融业', N'2', N'J')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J691', N'金融信托与管理服务', N'3', N'J69')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6910', N'金融信托与管理服务', N'4', N'J691')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J692', N'控股公司服务', N'3', N'J69')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6920', N'控股公司服务', N'4', N'J692')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J693', N'非金融机构支付服务', N'3', N'J69')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6930', N'非金融机构支付服务', N'4', N'J693')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J694', N'金融信息服务', N'3', N'J69')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6940', N'金融信息服务', N'4', N'J694')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J699', N'其他未列明金融业', N'3', N'J69')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'J6990', N'其他未列明金融业', N'4', N'J699')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K', N'房地产业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K70', N'房地产业', N'2', N'K')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K701', N'房地产开发经营', N'3', N'K70')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K7010', N'房地产开发经营', N'4', N'K701')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K702', N'物业管理', N'3', N'K70')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K7020', N'物业管理', N'4', N'K702')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K703', N'房地产中介服务', N'3', N'K70')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K7030', N'房地产中介服务', N'4', N'K703')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K704', N'自有房地产经营活动', N'3', N'K70')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K7040', N'自有房地产经营活动', N'4', N'K704')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K709', N'其他房地产业', N'3', N'K70')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'K7090', N'其他房地产业', N'4', N'K709')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L', N'租赁和商务服务业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L71', N'租赁业', N'2', N'L')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L711', N'机械设备租赁', N'3', N'L71')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7111', N'汽车租赁', N'4', N'L711')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7112', N'农业机械租赁', N'4', N'L711')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7113', N'建筑工程机械与设备租赁', N'4', N'L711')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7114', N'计算机及通讯设备租赁', N'4', N'L711')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7119', N'其他机械与设备租赁', N'4', N'L711')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L712', N'文化及日用品出租', N'3', N'L71')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7121', N'娱乐及体育设备出租', N'4', N'L712')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7122', N'图书出租', N'4', N'L712')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7123', N'音像制品出租', N'4', N'L712')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7129', N'其他文化及日用品出租', N'4', N'L712')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L72', N'商务服务业', N'2', N'L')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L721', N'企业管理服务', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7211', N'企业总部管理', N'4', N'L721')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7212', N'投资与资产管理', N'4', N'L721')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7213', N'单位后勤管理服务', N'4', N'L721')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7219', N'其他企业管理服务', N'4', N'L721')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L722', N'法律服务', N'3', N'L72')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7221', N'律师及相关法律服务', N'4', N'L722')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7222', N'公证服务', N'4', N'L722')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7229', N'其他法律服务', N'4', N'L722')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L723', N'咨询与调查', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7231', N'会计、审计及税务服务', N'4', N'L723')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7232', N'市场调查', N'4', N'L723')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7233', N'社会经济咨询', N'4', N'L723')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7239', N'其他专业咨询', N'4', N'L723')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L724', N'广告业', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7240', N'广告业', N'4', N'L724')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L725', N'知识产权服务', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7250', N'知识产权服务', N'4', N'L725')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L726', N'人力资源服务', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7261', N'公共就业服务', N'4', N'L726')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7262', N'职业中介服务', N'4', N'L726')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7263', N'劳务派遣服务', N'4', N'L726')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7269', N'其他人力资源服务', N'4', N'L726')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L727', N'旅行社及相关服务', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7271', N'旅行社服务', N'4', N'L727')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7272', N'旅游管理服务', N'4', N'L727')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7279', N'其他旅行社相关服务', N'4', N'L727')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L728', N'安全保护服务', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7281', N'安全服务', N'4', N'L728')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7282', N'安全系统监控服务', N'4', N'L728')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7289', N'其他安全保护服务', N'4', N'L728')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L729', N'其他商务服务业', N'3', N'L72')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7291', N'市场管理', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7292', N'会议及展览服务', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7293', N'包装服务', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7294', N'办公服务', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7295', N'信用服务', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7296', N'担保服务', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'L7299', N'其他未列明商务服务业', N'4', N'L729')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M', N'科学研究和技术服务业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M73', N'研究和试验发展', N'2', N'M')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M731', N'自然科学研究和试验发展', N'3', N'M73')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7310', N'自然科学研究和试验发展', N'4', N'M731')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M732', N'工程和技术研究和试验发展', N'3', N'M73')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7320', N'工程和技术研究和试验发展', N'4', N'M732')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M733', N'农业科学研究和试验发展', N'3', N'M73')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7330', N'农业科学研究和试验发展', N'4', N'M733')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M734', N'医学研究和试验发展', N'3', N'M73')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7340', N'医学研究和试验发展', N'4', N'M734')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M735', N'社会人文科学研究', N'3', N'M73')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7350', N'社会人文科学研究', N'4', N'M735')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M74', N'专业技术服务业', N'2', N'M')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M741', N'气象服务', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7410', N'气象服务', N'4', N'M741')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M742', N'地震服务', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7420', N'地震服务', N'4', N'M742')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M743', N'海洋服务', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7430', N'海洋服务', N'4', N'M743')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M744', N'测绘服务', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7440', N'测绘服务', N'4', N'M744')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M745', N'质检技术服务', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7450', N'质检技术服务', N'4', N'M745')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M746', N'环境与生态监测', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7461', N'环境保护监测', N'4', N'M746')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7462', N'生态监测', N'4', N'M746')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M747', N'地质勘查', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7471', N'能源矿产地质勘查', N'4', N'M747')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7472', N'固体矿产地质勘查', N'4', N'M747')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7473', N'水、二氧化碳等矿产地质勘查', N'4', N'M747')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7474', N'基础地质勘查', N'4', N'M747')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7475', N'地质勘查技术服务', N'4', N'M747')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M748', N'工程技术', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7481', N'工程管理服务', N'4', N'M748')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7482', N'工程勘察设计', N'4', N'M748')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7483', N'规划管理', N'4', N'M748')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M749', N'其他专业技术服务业', N'3', N'M74')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7491', N'专业化设计服务', N'4', N'M749')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7492', N'摄影扩印服务', N'4', N'M749')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7493', N'兽医服务', N'4', N'M749')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7499', N'其他未列明专业技术服务业', N'4', N'M749')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M75', N'科技推广和应用服务业', N'2', N'M')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M751', N'技术推广服务', N'3', N'M75')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7511', N'农业技术推广服务', N'4', N'M751')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7512', N'生物技术推广服务', N'4', N'M751')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7513', N'新材料技术推广服务', N'4', N'M751')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7514', N'节能技术推广服务', N'4', N'M751')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7519', N'其他技术推广服务', N'4', N'M751')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M752', N'科技中介服务', N'3', N'M75')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7520', N'科技中介服务', N'4', N'M752')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M759', N'其他科技推广和应用服务业', N'3', N'M75')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'M7590', N'其他科技推广和应用服务业', N'4', N'M759')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N', N'水利、环境和公共设施管理业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N76', N'水利管理业', N'2', N'N')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N761', N'防洪除涝设施管理', N'3', N'N76')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7610', N'防洪除涝设施管理', N'4', N'N761')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N762', N'水资源管理', N'3', N'N76')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7620', N'水资源管理', N'4', N'N762')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N763', N'天然水收集与分配', N'3', N'N76')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7630', N'天然水收集与分配', N'4', N'N763')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N764', N'水文服务', N'3', N'N76')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7640', N'水文服务', N'4', N'N764')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N769', N'其他水利管理业', N'3', N'N76')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7690', N'其他水利管理业', N'4', N'N769')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N77', N'生态保护和环境治理业', N'2', N'N')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N771', N'生态保护', N'3', N'N77')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7711', N'自然保护区管理', N'4', N'N771')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7712', N'野生动物保护', N'4', N'N771')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7713', N'野生植物保护', N'4', N'N771')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7719', N'其他自然保护', N'4', N'N771')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N772', N'环境治理业', N'3', N'N77')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7721', N'水污染治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7722', N'大气污染治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7723', N'固体废物治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7724', N'危险废物治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7725', N'放射性废物治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7729', N'其他污染治理', N'4', N'N772')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N78', N'公共设施管理业', N'2', N'N')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N781', N'市政设施管理', N'3', N'N78')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7810', N'市政设施管理', N'4', N'N781')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N782', N'环境卫生管理', N'3', N'N78')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7820', N'环境卫生管理', N'4', N'N782')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N783', N'城乡市容管理', N'3', N'N78')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7830', N'城乡市容管理', N'4', N'N783')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N784', N'绿化管理', N'3', N'N78')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7840', N'绿化管理', N'4', N'N784')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N785', N'公园和游览景区管理', N'3', N'N78')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7851', N'公园管理', N'4', N'N785')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'N7852', N'游览景区管理', N'4', N'N785')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O', N'居民服务、修理和其他服务业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O79', N'居民服务业', N'2', N'O')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O791', N'家庭服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7910', N'家庭服务', N'4', N'O791')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O792', N'托儿所服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7920', N'托儿所服务', N'4', N'O792')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O793', N'洗染服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7930', N'洗染服务', N'4', N'O793')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O794', N'理发及美容服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7940', N'理发及美容服务', N'4', N'O794')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O795', N'洗浴服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7950', N'洗浴服务', N'4', N'O795')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O796', N'保健服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7960', N'保健服务', N'4', N'O796')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O797', N'婚姻服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7970', N'婚姻服务', N'4', N'O797')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O798', N'殡葬服务', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7980', N'殡葬服务', N'4', N'O798')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O799', N'其他居民服务业', N'3', N'O79')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O7990', N'其他居民服务业', N'4', N'O799')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O80', N'机动车、电子产品和日用产品修理业', N'2', N'O')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O801', N'汽车、摩托车修理与维护', N'3', N'O80')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8011', N'汽车修理与维护', N'4', N'O801')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8012', N'摩托车修理与维护', N'4', N'O801')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O802', N'计算机和办公设备维修', N'3', N'O80')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8021', N'计算机和辅助设备修理', N'4', N'O802')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8022', N'通讯设备修理', N'4', N'O802')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8029', N'其他办公设备维修', N'4', N'O802')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O803', N'家用电器修理', N'3', N'O80')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8031', N'家用电子产品修理', N'4', N'O803')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8032', N'日用电器修理', N'4', N'O803')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O809', N'其他日用产品修理业', N'3', N'O80')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8091', N'自行车修理', N'4', N'O809')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8092', N'鞋和皮革修理', N'4', N'O809')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8093', N'家具和相关物品修理', N'4', N'O809')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8099', N'其他未列明日用产品修理业', N'4', N'O809')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O81', N'其他服务业', N'2', N'O')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O811', N'清洁服务', N'3', N'O81')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8111', N'建筑物清洁服务', N'4', N'O811')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8119', N'其他清洁服务', N'4', N'O811')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O819', N'其他未列明服务业', N'3', N'O81')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'O8190', N'其他未列明服务业', N'4', N'O819')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P', N'教育', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P82', N'教育', N'2', N'P')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P821', N'学前教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8210', N'学前教育', N'4', N'P821')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P822', N'初等教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8221', N'普通小学教育', N'4', N'P822')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8222', N'成人小学教育', N'4', N'P822')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P823', N'中等教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8231', N'普通初中教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8232', N'职业初中教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8233', N'成人初中教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8234', N'普通高中教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8235', N'成人高中教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8236', N'中等职业学校教育', N'4', N'P823')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P824', N'高等教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8241', N'普通高等教育', N'4', N'P824')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8242', N'成人高等教育', N'4', N'P824')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P825', N'特殊教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8250', N'特殊教育', N'4', N'P825')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P829', N'技能培训、教育辅助及其他教育', N'3', N'P82')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8291', N'职业技能培训', N'4', N'P829')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8292', N'体校及体育培训', N'4', N'P829')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8293', N'文化艺术培训', N'4', N'P829')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8294', N'教育辅助服务', N'4', N'P829')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'P8299', N'其他未列明教育', N'4', N'P829')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q', N'卫生和社会工作', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q83', N'卫生', N'2', N'Q')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q831', N'医院', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8311', N'综合医院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8312', N'中医医院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8313', N'中西医结合医院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8314', N'民族医院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8315', N'专科医院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8316', N'疗养院', N'4', N'Q831')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q832', N'社区医疗与卫生院', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8321', N'社区卫生服务中心（站）', N'4', N'Q832')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8322', N'街道卫生院', N'4', N'Q832')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8323', N'乡镇卫生院', N'4', N'Q832')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q833', N'门诊部（所）', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8330', N'门诊部（所）', N'4', N'Q833')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q834', N'计划生育技术服务活动', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8340', N'计划生育技术服务活动', N'4', N'Q834')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q835', N'妇幼保健院（所、站）', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8350', N'妇幼保健院（所、站）', N'4', N'Q835')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q836', N'专科疾病防治院（所、站）', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8360', N'专科疾病防治院（所、站）', N'4', N'Q836')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q837', N'疾病预防控制中心', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8370', N'疾病预防控制中心', N'4', N'Q837')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q839', N'其他卫生活动', N'3', N'Q83')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8390', N'其他卫生活动', N'4', N'Q839')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q84', N'社会工作', N'2', N'Q')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q841', N'提供住宿社会工作', N'3', N'Q84')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8411', N'干部休养所', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8412', N'护理机构服务', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8413', N'精神康复服务', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8414', N'老年人、残疾人养护服务', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8415', N'孤残儿童收养和庇护服务', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8419', N'其他提供住宿社会救助', N'4', N'Q841')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q842', N'不提供住宿社会工作', N'3', N'Q84')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8421', N'社会看护与帮助服务', N'4', N'Q842')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'Q8429', N'其他不提供住宿社会工作', N'4', N'Q842')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R', N'文化、体育和娱乐业', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R85', N'新闻和出版业', N'2', N'R')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R851', N'新闻业', N'3', N'R85')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8510', N'新闻业', N'4', N'R851')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R852', N'出版业', N'3', N'R85')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8521', N'图书出版', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8522', N'报纸出版', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8523', N'期刊出版', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8524', N'音像制品出版', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8525', N'电子出版物出版', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8529', N'其他出版业', N'4', N'R852')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R86', N'广播、电视、电影和影视录音制作业', N'2', N'R')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R861', N'广播', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8610', N'广播', N'4', N'R861')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R862', N'电视', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8620', N'电视', N'4', N'R862')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R863', N'电影和影视节目制作', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8630', N'电影和影视节目制作', N'4', N'R863')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R864', N'电影和影视节目发行', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8640', N'电影和影视节目发行', N'4', N'R864')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R865', N'电影放映', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8650', N'电影放映', N'4', N'R865')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R866', N'录音制作', N'3', N'R86')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8660', N'录音制作', N'4', N'R866')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R87', N'文化艺术业', N'2', N'R')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R871', N'文艺创作与表演', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8710', N'文艺创作与表演', N'4', N'R871')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R872', N'艺术表演场馆', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8720', N'艺术表演场馆', N'4', N'R872')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R873', N'图书馆与档案馆', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8731', N'图书馆', N'4', N'R873')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8732', N'档案馆', N'4', N'R873')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R874', N'文物及非物质文化遗产保护', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8740', N'文物及非物质文化遗产保护', N'4', N'R874')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R875', N'博物馆', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8750', N'博物馆', N'4', N'R875')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R876', N'烈士陵园、纪念馆', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8760', N'烈士陵园、纪念馆', N'4', N'R876')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R877', N'群众文化活动', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8770', N'群众文化活动', N'4', N'R877')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R879', N'其他文化艺术业', N'3', N'R87')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8790', N'其他文化艺术业', N'4', N'R879')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R88', N'体育', N'2', N'R')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R881', N'体育组织', N'3', N'R88')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8810', N'体育组织', N'4', N'R881')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R882', N'体育场馆', N'3', N'R88')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8820', N'体育场馆', N'4', N'R882')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R883', N'休闲健身活动', N'3', N'R88')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8830', N'休闲健身活动', N'4', N'R883')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R889', N'其他体育', N'3', N'R88')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8890', N'其他体育', N'4', N'R889')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R89', N'娱乐业', N'2', N'R')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R891', N'室内娱乐活动', N'3', N'R89')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8911', N'歌舞厅娱乐活动', N'4', N'R891')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8912', N'电子游艺厅娱乐活动', N'4', N'R891')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8913', N'网吧活动', N'4', N'R891')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8919', N'其他室内娱乐活动', N'4', N'R891')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R892', N'游乐园', N'3', N'R89')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8920', N'游乐园', N'4', N'R892')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R893', N'彩票活动', N'3', N'R89')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8930', N'彩票活动', N'4', N'R893')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R894', N'文化、娱乐、体育经纪代理', N'3', N'R89')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8941', N'文化娱乐经纪人', N'4', N'R894')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8942', N'体育经纪人', N'4', N'R894')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8949', N'其他文化艺术经纪代理', N'4', N'R894')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R899', N'其他娱乐业', N'3', N'R89')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'R8990', N'其他娱乐业', N'4', N'R899')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S', N'公共管理、社会保障和社会组织', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S90', N'中国共产党机关', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S900', N'中国共产党机关', N'3', N'S90')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9000', N'中国共产党机关', N'4', N'S900')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S91', N'国家机构', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S911', N'国家权力机构', N'3', N'S91')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9110', N'国家权力机构', N'4', N'S911')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S912', N'国家行政机构', N'3', N'S91')
GO
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9121', N'综合事务管理机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9122', N'对外事务管理机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9123', N'公共安全管理机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9124', N'社会事务管理机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9125', N'经济事务管理机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9126', N'行政监督检查机构', N'4', N'S912')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S913', N'人民法院和人民检察院', N'3', N'S91')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9131', N'人民法院', N'4', N'S913')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9132', N'人民检察院', N'4', N'S913')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S919', N'其他国家机构', N'3', N'S91')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9190', N'其他国家机构', N'4', N'S919')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S92', N'人民政协、民主党派', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S921', N'人民政协', N'3', N'S92')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9210', N'人民政协', N'4', N'S921')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S922', N'民主党派', N'3', N'S92')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9220', N'民主党派', N'4', N'S922')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S93', N'社会保障', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S930', N'社会保障', N'3', N'S93')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9300', N'社会保障', N'4', N'S930')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S94', N'群众团体、社会团体和其他成员组织', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S941', N'群众团体', N'3', N'S94')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9411', N'工会', N'4', N'S941')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9412', N'妇联', N'4', N'S941')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9413', N'共青团', N'4', N'S941')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9419', N'其他群众团体', N'4', N'S941')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S942', N'社会团体', N'3', N'S94')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9421', N'专业性团体', N'4', N'S942')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9422', N'行业性团体', N'4', N'S942')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9429', N'其他社会团体', N'4', N'S942')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S943', N'基金会', N'3', N'S94')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9430', N'基金会', N'4', N'S943')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S944', N'宗教组织', N'3', N'S94')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9440', N'宗教组织', N'4', N'S944')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S95', N'基层群众自治组织', N'2', N'S')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S951', N'社区自治组织', N'3', N'S95')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9510', N'社区自治组织', N'4', N'S951')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S952', N'村民自治组织', N'3', N'S95')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'S9520', N'村民自治组织', N'4', N'S952')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'T', N'国际组织', N'1', NULL)
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'T96', N'国际组织', N'2', N'T')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'T960', N'国际组织', N'3', N'T96')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'T9600', N'国际组织', N'4', N'T960')
INSERT [dbo].[sys_way] ([way_no], [way_name], [lev], [uplev]) VALUES (N'W', N'其他', N'1', NULL)
SET IDENTITY_INSERT [dbo].[tb_user] ON 

INSERT [dbo].[tb_user] ([user_id], [username], [mobile], [password], [create_time]) VALUES (1, N'mark', N'admin', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', CAST(N'2017-03-23T22:37:41.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [SCHED_NAME]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [SCHED_NAME] ON [dbo].[qrtz_blob_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_INST_JOB_REQ_RCVRY]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_INST_JOB_REQ_RCVRY] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC,
	[REQUESTS_RECOVERY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_J_G]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_J_G] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_JG]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_JG] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_T_G]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_T_G] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_TG]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_TG] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_FT_TRIG_INST_NAME]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_FT_TRIG_INST_NAME] ON [dbo].[qrtz_fired_triggers]
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_J_GRP]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_J_GRP] ON [dbo].[qrtz_job_details]
(
	[SCHED_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_J_REQ_RECOVERY]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_J_REQ_RECOVERY] ON [dbo].[qrtz_job_details]
(
	[SCHED_NAME] ASC,
	[REQUESTS_RECOVERY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_C]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_C] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_G]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_G] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_J]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_J] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_JG]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_JG] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_N_G_STATE]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_N_G_STATE] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC,
	[TRIGGER_STATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_N_STATE]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_N_STATE] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC,
	[TRIGGER_STATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_NEXT_FIRE_TIME]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_NEXT_FIRE_TIME] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[NEXT_FIRE_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_NFT_MISFIRE]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_NFT_MISFIRE] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[MISFIRE_INSTR] ASC,
	[NEXT_FIRE_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_NFT_ST]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_NFT_ST] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_STATE] ASC,
	[NEXT_FIRE_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_NFT_ST_MISFIRE]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_NFT_ST_MISFIRE] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[MISFIRE_INSTR] ASC,
	[NEXT_FIRE_TIME] ASC,
	[TRIGGER_STATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_NFT_ST_MISFIRE_GRP]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_NFT_ST_MISFIRE_GRP] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[MISFIRE_INSTR] ASC,
	[NEXT_FIRE_TIME] ASC,
	[TRIGGER_GROUP] ASC,
	[TRIGGER_STATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_QRTZ_T_STATE]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [IDX_QRTZ_T_STATE] ON [dbo].[qrtz_triggers]
(
	[SCHED_NAME] ASC,
	[TRIGGER_STATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [job_id]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [job_id] ON [dbo].[schedule_job_log]
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [sys_area_idx1]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [sys_area_idx1] ON [dbo].[sys_area]
(
	[area_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [param_key]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [param_key] ON [dbo].[sys_config]
(
	[param_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [type]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [type] ON [dbo].[sys_dict]
(
	[type] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [username] ON [dbo].[sys_user]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [cif_way_idx1]    Script Date: 2019/4/19 16:36:28 ******/
CREATE NONCLUSTERED INDEX [cif_way_idx1] ON [dbo].[sys_way]
(
	[uplev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SYS_C0019395]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [SYS_C0019395] ON [dbo].[sys_way]
(
	[way_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [token]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [token] ON [dbo].[tb_token]
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username]    Script Date: 2019/4/19 16:36:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [username] ON [dbo].[tb_user]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qrtz_blob_triggers]  WITH CHECK ADD FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO
ALTER TABLE [dbo].[qrtz_cron_triggers]  WITH CHECK ADD FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO
ALTER TABLE [dbo].[qrtz_simple_triggers]  WITH CHECK ADD FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO
ALTER TABLE [dbo].[qrtz_simprop_triggers]  WITH CHECK ADD FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO
ALTER TABLE [dbo].[qrtz_triggers]  WITH CHECK ADD FOREIGN KEY([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
REFERENCES [dbo].[qrtz_job_details] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'dt_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'dt_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'ds_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集SQL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'sql'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'sts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set', @level2type=N'COLUMN',@level2name=N'order_by_str'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源种类  json   db' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驱动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'driver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'usr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'只读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'readonly'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'sts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'up_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'data_source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型大类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库驱动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'driver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库地址例子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'addr_demo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'sts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库支持类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'db_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'show_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'dt_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'引用表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'use_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'is_show'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'alias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集表显示字段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ds_showcol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'filter_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'dt_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'column'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'col_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'param_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'param'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'up_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集过滤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_filter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'param_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'param_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'dt_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'param_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否多值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'if_values'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'up_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集参数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_param'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'use_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'dt_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'table_comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'show_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'横向位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'px'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纵向位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'py'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'up_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'据集使用表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'rs_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'引用编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'use_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系类型(union/join)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'rs_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系模式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'rs_model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'up_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs', @level2type=N'COLUMN',@level2name=N'up_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集引用表关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'cd_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'cd_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输出名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'rename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左侧表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'left_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左侧字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'left_col'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'operator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'右侧表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'right_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'右侧字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'right_col'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'tx_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition', @level2type=N'COLUMN',@level2name=N'tx_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据集表关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_table_rs_condition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'spring bean名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'bean_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cron表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'cron_expression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态  0：正常  1：暂停' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'定时任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务日志id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'log_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'spring bean名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'bean_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态    0：成功    1：失败' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失败信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'error'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'耗时(单位：毫秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'times'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'定时任务日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'schedule_job_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'param_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'param_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态   0：隐藏   1：显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级部门ID，一级部门为0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'order_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除  -1：已删除  0：正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'order_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标记  -1：已删除  0：正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'operation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行时长(毫秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'create_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父菜单ID，一级菜单为0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权(多个用逗号分隔，如：user:list,user:create)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'perms'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型   0：目录   1：菜单   2：按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'order_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打开方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'open_mode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oss', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oss', @level2type=N'COLUMN',@level2name=N'create_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件上传' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_dept', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_dept', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色与部门对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_menu', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_menu', @level2type=N'COLUMN',@level2name=N'menu_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色与菜单对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态  0：禁用   1：正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_role', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_role', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户与角色对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_token', @level2type=N'COLUMN',@level2name=N'token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_token', @level2type=N'COLUMN',@level2name=N'expire_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_token', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user'
GO
