use master
create database perProject
go
create table book
(
	ID int primary key identity(1,1),
	bookName nvarchar(20) not null,
	author nvarchar(20) not null,
	publisher nvarchar(50) not null,
	publisherDate time not null,
	pages int not null,
	price decimal not null,
	ISBN nvarchar(50) not null,
	content nvarchar(256),
)
select price,bookName from book ORDER BY price ASC

select * from book inner join typeFirst on book.ID=typeFirst.ID inner join typeSecond on book.ID=typeSecond.ID



insert into book values('财务管理专业英语(第2版)','小明','北京出版社',GETDATE(),200,68,9787111310001,''),
('财务管理专业','小红','北京出版社',GETDATE(),200,88,9787111310002,''),
('计算机组成原理(第2版)','小军','北京出版社',GETDATE(),200,56,9787111310003,''),
('数学建模(第2版)','小黑','北京出版社',GETDATE(),200,98,9787111310004,''),
('基础生态学(第2版)','小小','北京出版社',GETDATE(),200,45,978711131000,''),
('EDA技术','小陈','北京出版社',GETDATE(),200,35,9787111310006,'')
select * from book

create table typeFirst
(
	fsID int primary key identity(1,1),
	firstType nvarchar(20) not null,
)

insert into typeFirst values('计算机与网络'),('管理'),('经济金融'),('科技工程'),('语言学习'),('少儿'),('艺术'),
('文学小说'),('文化历史'),('建筑'),('新闻传播'),('成功励志'),('家庭教育'),('生活时尚')
select * from typeFirst


select * from typeFirst inner join typeSecond on typeFirst.fsID=typeSecond.fsID

create table  typeSecond
(
    ID int primary key identity(1,1), 
	fsID int foreign key references typeFirst(fsID) not null,
	secondType nvarchar(20) not null
)
insert into typeSecond values('1','语言与编程'),('1','计算机理论基础'),('1','数据库'),('1','网页制作'),('1','图形图像'),
('1','软件工程'),('1','网络与通讯'),('1','单片机与嵌入式'),('1','操作系统'),('1','多媒体'),
('2','市场管理'),('2','物流管理'),('2','管理与原理'),('2','财务管理'),('2','企业管理与培训'),
('2','电子商务'),('2','人力资源管理'),('2','酒店餐饮管理'),('2','项目管理'),('2','公共管理'),
('3','股票'),('3','工业经济'),('3','中国经济'),('3','经济史'),('3','基金'),
('3','保险'),('3','世界经济'),('3','行业经济'),('3','整卷股票'),('3','企业并购')
select * from typeSecond
select * from typeSecond
