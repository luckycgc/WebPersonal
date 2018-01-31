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



insert into book values('�������רҵӢ��(��2��)','С��','����������',GETDATE(),200,68,9787111310001,''),
('�������רҵ','С��','����������',GETDATE(),200,88,9787111310002,''),
('��������ԭ��(��2��)','С��','����������',GETDATE(),200,56,9787111310003,''),
('��ѧ��ģ(��2��)','С��','����������',GETDATE(),200,98,9787111310004,''),
('������̬ѧ(��2��)','СС','����������',GETDATE(),200,45,978711131000,''),
('EDA����','С��','����������',GETDATE(),200,35,9787111310006,'')
select * from book

create table typeFirst
(
	fsID int primary key identity(1,1),
	firstType nvarchar(20) not null,
)

insert into typeFirst values('�����������'),('����'),('���ý���'),('�Ƽ�����'),('����ѧϰ'),('�ٶ�'),('����'),
('��ѧС˵'),('�Ļ���ʷ'),('����'),('���Ŵ���'),('�ɹ���־'),('��ͥ����'),('����ʱ��')
select * from typeFirst


select * from typeFirst inner join typeSecond on typeFirst.fsID=typeSecond.fsID

create table  typeSecond
(
    ID int primary key identity(1,1), 
	fsID int foreign key references typeFirst(fsID) not null,
	secondType nvarchar(20) not null
)
insert into typeSecond values('1','��������'),('1','��������ۻ���'),('1','���ݿ�'),('1','��ҳ����'),('1','ͼ��ͼ��'),
('1','�������'),('1','������ͨѶ'),('1','��Ƭ����Ƕ��ʽ'),('1','����ϵͳ'),('1','��ý��'),
('2','�г�����'),('2','��������'),('2','������ԭ��'),('2','�������'),('2','��ҵ��������ѵ'),
('2','��������'),('2','������Դ����'),('2','�Ƶ��������'),('2','��Ŀ����'),('2','��������'),
('3','��Ʊ'),('3','��ҵ����'),('3','�й�����'),('3','����ʷ'),('3','����'),
('3','����'),('3','���羭��'),('3','��ҵ����'),('3','�����Ʊ'),('3','��ҵ����')
select * from typeSecond
select * from typeSecond
