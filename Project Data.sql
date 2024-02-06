Create Database Project_Data

use Project_Data

---Creating Profiles Table 

Create Table Profiles
(profile_id Int NOT NULL,
first_name varchar(255) NUll,
last_name VArchar(255) NULL,
email_id varchar(255) NOT NULL,
phone varchar(255) NOT NULL,
city Varchar(255) NULL,
created_at Date NOT NULL,
gender Varchar(255) NOT NULL,
referral_code Varchar(255) NULL,
marital_status varchar(255) NULL,
Constraint id_PK Primary Key (profile_id))


Insert Into Profiles
Values
(1,'anusha','pariti','anusha.pariti@gmail.com',8105987404,'Bangalore','2015-04-16','F','7L5FZW','Y'),
(2,'Ashish','Singh','ashish.singh@gmail.com',9876890463,'Bangalore','2015-05-23','M','KF34MF','Y'),
(3,'Bhaskar','maheshwari','bhaskar.mah@gmail.com',9801834992,'Bangalore','2015-05-01','M','5TYSHGF','N'),
(4,'Garima','yadav','garima0191@gmail.com',81059237004,'Bangalore','2015-10-20','F','5G5FQW','N'),
(5,'Tanvi','mann','tanvi.mann1907@gmail.com',9178352769,'Bangalore','2015-02-16','F','JSH48B','N'),
(6,'Harish','sahai','harish294all@gmail.com',9876548763,'Bangalore','2015-11-11','M','MKGI2W','Y'),
(7,'Kamal','gera','kamal0094@gmail.com',8105987404,'Bangalore','2015-10-31','M','MK34ER','N'),
(8,'Tushar','kapoor','tushar.kapoor21@gmail.com',8926537154,'Pune','2015-12-12','M','KLF12E','N'),
(9,'Shivshankar','das','sankar.shiva730@gmail.com',9801834992,'Pune','2015-10-06','M','3RE5TY','Y'),
(10,'Aditi','jain','aditi.jain@sproxil.com',9873123456,'Pune','2015-06-11','F','5TPL4E','N'),
(11,'Deepa','sudhakar','sudhakar.deepa@gmail.com',7896785432,'Pune','2015-09-15','F','4RTYUIO','Y'),
(12,'Umang','parejiya','uparejiya@gmail.com',7896543674,'Pune','2015-07-18','M','6TY4WE','N'),
(13,'Mitali','gupta','mitali.gupta80@gmail.com',8796751238,'Pune','2015-03-24','F','5RTYU3','Y'),
(14,'Manisha','Yadav','maniyadav88@gmail.com',9867845182,'Delhi','2015-01-27','F','LKGHY6','N'),
(15,'Shivani','godha','shivani_go@nid.edu',9878673428,'Delhi','2015-02-19','F','8NM4R','Y'),
(16,'Rajan','pandey','raajanpandey@gmail.com',8987647811,'delhi','2015-09-04','M','5TYUIO','N'),
(17,'Roosena','manuel','roseenasimimanuel@gmail.com',9875623345,'Delhi','2015-04-13','F','6TYHU','Y'),
(18,'Prabhjot','gill','prabhjotgill09@gmail.com',9800786688,'Delhi','2015-12-30','M','GHJK34','N'),
(19,'Ankita','sharma','ankita.anku96@gmail.com',9988789656,'Delhi','2015-08-17','F','TH67TY','Y'),
(20,'Karan','Singh','karan.singh@gmail.com',8976665768,'Delhi','2015-09-15','M','LRF34F','N')


--Creating Table Houses
 
 Create Table Houses
 (house_id int NOT NULL,
 house_type varchar(255) NULL,
 bhk_type varchar(255) NULL,
 bed_count int NOT NULL,
 furnishing_type Varchar(255) NULL,
 beds_vacant int NOT NULL,
 Constraint PK_houseid Primary Key(house_id))

 Insert Into Houses Values
(1,'Apartment','3 BHK',5,'unfurnished',2),
(2,'Apartment','3 BHK',3,'unfurnished',1),
(3,'Apartment','3 BHK',6,'fully-furnished',4),
(4,'Apartment','2 BHK',2,'fully-furnished',0),
(5,'Independent','4 BHK',4,'fully-furnished',2),
(6,'Apartment','3 BHK',3,'semifurnished',1),
(7,'Apartment','3 BHK',3,'semifurnished',0),
(8,'Apartment','2 BHK',4,'fully-furnished',1),
(9,'Independent','1 BHK',2,'unfurnished',0),
(10,'Independent','3 BHK',3,'fully-furnished',1),
(11,'Apartment','1 BHK',1,'unfurnished',0),
(12,'Independent','1 BHK',2,'unfurnished',1),
(13,'Independent','2 BHK',4,'unfurnished',2),
(14,'Apartment','3 BHK',3,'fully-furnished',0),
(15,'Independent','1 BHK',2,'unfurnished',1),
(16,'Apartment','3 BHK',3,'fully-furnished',0),
(17,'Independent','3 BHK',3,'fully-furnished',1),
(18,'Independent','2 BHK',2,'fully-furnished',1),
(19,'Independent','3 BHK',3,'fully-furnished',1),
(20,'Independent','1 BHK',2,'unfurnished',2)




--Creating Table

Create Table TenancyHistory
(ID int identity(1,1),
profile_id int NOT NULL,
house_id int NOT NULL,
move_in_date date NOT NULL,
move_out_date date NULL,
rent int NOT NULL,
bed_type Varchar(255) NULL,
move_out_reason varchar(30) NULL,
Constraint PK_ID Primary key(id),
Constraint FK_ProfileID Foreign Key(profile_id) References Profiles(profile_id),
Constraint FK_Houseid Foreign Key(house_id) References Houses(house_id))

SET IDENTITY_INSERT TenancyHistory ON

Insert Into TenancyHistory Values
(1, 5, '2015-02-12', '2016-04-30', 7500, 'bed', 'MOVE_OUT'),
(2, 2, '2015-06-05', NULL, 11000, 'room', NULL),
(3, 4, '2015-10-28', '2016-11-28', 12000, 'room', 'RENT_CHANGE'),
(4, 1, '2015-04-26', NULL, 8000, 'bed', NULL),
(5, 3, '2015-05-15', '2015-12-27', 9000, 'bed', 'MOVE_OUT'),
(6, 8, '2015-12-25', NULL, 10200, 'room', NULL),
(7, 6, '2015-11-20', NULL, 6500, 'bed', NULL),
(8, 7, '2015-11-10', '2016-12-31', 7200, 'bed', 'MOVE_OUT'),
(9, 9, '2015-10-15', NULL, 7500, 'bed', NULL),
(10, 10, '2015-06-20', NULL, 7500, 'bed', NULL),
(11, 19, '2015-08-29', '2016-06-14', 8000, 'bed', 'INTERNAL_TRANSFER'),
(12, 15, '2015-02-24', NULL, 11000, 'room', NULL),
(13, 12, '2015-02-25', NULL, 12000, 'room', NULL),
(14, 18, '2016-01-07', '2016-12-30', 13500, 'room', 'MOVE_OUT'),
(15, 13, '2015-04-07', NULL, 6500, 'bed', NULL),
(16, 17, '2015-04-23', NULL, 6500, 'bed', NULL),
(17, 14, '2015-02-10', NULL, 10500, 'room', NULL),
(18, 16, '2015-10-16', '2016-09-04', 8000, 'bed', 'MOVE_OUT'),
(19, 20, '2015-09-26', NULL, 7500, 'bed', NULL),
(20, 11, '2015-09-30', NULL, 9500, 'bed', NULL)


use Project_Data


Create Table Addresses
(ad_id int identity(1,1) NOT NULL,
name varchar(255) NULL,
description Text NULL,
pincode int NULL,
city varchar(255) NULL,
house_id int NOT NULL,
Constraint PK_adid Primary Key (ad_id),
Constraint FK_adhouse Foreign Key(house_id) references Houses(house_id))

use Project_Data
SET IDENTITY_INSERT Addresses OFF

insert into Addresses(ad_id,name,description,city,pincode,house_id) values
(2,'Zaanz appartment','Sterling BrookSide, Opp. Kundalahalli Colony, ITPL Main Rd','bangalore',560037,1),
(3,'stag saptgiri','No.44,Ground floor,20th cross,Sector 2 HSR Layout,Bangalore.','bangalore',560102,2),
(4,'sri sai enclave','No.44,First floor,20th cross,Sector 2 HSR Layout.','bangalore',560102,3),
(5,'orchids building','D-208, Balaji Pristine Whitefield Main Road','bangalore',560066,4),
(6,'Fella homes','#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2, Electronic City','bangalore',560100,5),
(7,'Juniper appartments','# 595/1, 1st Floor,1st A main, Domlur Layout','bangalore',560038,6),
(8,'UDB Building','Flat No: T1 Deccan Field Appartment Kunadanhalli main road'	,'bangalore',560037,7),
(9,'Apoorva society','Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara','Delhi',561202,8),
(10,'Stag saptgiri','Flat No-202, stag saptgiri No-26 phase2 Cooperative Society','Delhi',560045,9),
(11,'VaK Residency','302,#473 VAK Residency, B-Block, AECS Layout Kundalahalli,','Delhi',456738,10),
(12,'Sunshine hills','Flat no 3, water ville apartment R.galli'	,'Delhi',100234,11),
(13,'Sri Sai appartment','2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur','Delhi',560107,12),
(14,'Barvika Residency','B105, 1st floor, B block, Barvika Residency','Delhi',5610023,13),
(15,'Nestaway building','#157, 4th Cross, 1st Main Road, Lower Palace Orchard','Delhi',546783,14),
(16,'Windsor Plaza','#301, Windsor Plaza,ITPL','Pune',560025,15),
(17,'Indira society','No. 502, Indira Meadows, Arunodaya Colony','Pune',302017,16),
(18,'Sri Krishna Society','Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post','Pune',560048,17),
(19,'uniworld'	,'D1-1201, Uniworld Garden 2','Pune',543678,18),
(20,'Vinayaka residency','49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra','Pune',560094,19),
(21,'Sun city appartments','Majeera Diamond Towers,malad-west','Pune',5600263,20)



Create table Referrals
(ref_id Int Identity (1,1) NOT NULL,
Referrer_id  int NOT NULL,
referrer_bonus_amount float NULL,
referral_valid tinyint check(referral_valid in (0,1)) NULL,
valid_from date NULL,
valid_till date NULL,
Constraint PK_refid Primary Key(ref_id),
constraint FK_referrerid Foreign Key(Referrer_id) References Houses(house_id))

use Project_Data
SET IDENTITY_INSERT Referrals on

Insert Into Referrals(ref_id,Referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till) Values
(1,2,2500,1,'2015-07-05','2015-09-05'),
(2,3,2500,1,'2015-07-05','2015-09-05'),
(3,5,1000,0,'2015-12-13','2016-02-13'),
(4,6,2500,0,'2016-04-25','2016-06-24'),
(5,10,1000,1,'2015-07-01','2015-09-01'),
(6,12,2500,1,'2015-05-12','2015-07-12'),
(7,13,2500,0,'2015-08-05','2015-10-05'),
(8,20,1000,1,'2016-02-05','2016-04-05'),
(9,2,2500,0,'2015-08-12','2015-09-12'),
(10,5,1000,1,'2016-02-18','2016-04-18'),
(12,20,1500,1,'2016-06-19','2016-08-19'),
(13,9,2500,0,'2015-11-15','2016-01-15'),
(14,13,1000,1,'2016-02-01','2016-04-01'),
(15,5,1000,	1,'2016-04-25','2016-06-24')


Create Table Employment_details
(id int identity(1,1) NOT NULL,
profile_id int NOT NULL,
latest_employer varchar(255) NULL,
official_mail_id varchar(255) NULL,
yrs_experince int NULL,
occupation_category varchar(255),
Constraint PK_empid Primary Key (id),
Constraint FK_Profile Foreign Key(profile_id) References Profiles(profile_id))


SET IDENTITY_INSERT Employment_details on


insert into Employment_details(id,profile_id,latest_employer,official_mail_id,yrs_experince,occupation_category) values
(1,	1,'Sabre','mehdi.hasan@sabre.com',1,'Working'),
(2,	2,'hindustan unilever','rags.ramgas@gmail.com',2,'Working'),
(3,	3,'Technicolor','jigna.thacker@technicolor.com',1,'Working'),
(4,	4,NULL,NULL,NULL,'Student'),
(5,	5,'GE Healthcare','ruchita.save@ge.com',3,'Working'),
(6,	6,'Aditya birla','shubhi.bajpai@adityabirla.com',	3,'Working'),
(7,	7,NULL,NULL,NULL,'Student'),
(8,	8,NULL,NULL,NULL,'Student'),
(9,	9,NULL,NULL,NULL,'Student'),
(10,10,'huawei Technologies','gunjan19wadhwa@gmail.com',4,'Working'),
(11,11,NULL,NULL,NULL,'Student'),
(12,12,'Centurylink India','PreetInder.Sodhi@centurylink.com',2,'Working'),
(13,13,'SAP Labs India','udit.singh@sap.com',2,'Working'),
(14,14,'NestAway','deepak@nestaway.com',1,'Working'),
(15,15,NULL,NULL,NULL,'Student'),
(16,16,	NULL,NULL,NULL,'Student'),
(17,17,'Microsoft','t-akmeh@microsoft.com',2,'Working'),
(18,18,'Cognizant','bhavranjan.pandey@cognizant.com',2,'Working'),
(19,19,NULL,NULL,NULL,'Student'),
(20,20,'Tiny Mogul Games','sanchit@hike.in',3,'Working')


---Q1 Write a query to get Profile ID, Full Name and Contact Number of the tenant who has stayed.
--with us for the longest time period in the past.

Select P.profile_id, CONCAT(first_name,last_name)as Full_Name,p.phone as Contact_Number
from Profiles P
join
TenancyHistory TH
on
P.profile_id = TH.profile_id
where 
TH.move_out_date IS NOT NULL
order by 
DATEDIFF(DAY,move_out_date,TH.move_in_date) asc


--Write a query to get the Full name, email id, phone of tenants who are married and paying.
--rent > 9000 using subqueries

Select  CONCAT(first_name,last_name)as Full_Name,p.email_id,p.phone as Contact_Number,p.marital_status,TH.rent
from Profiles P
join
TenancyHistory TH
on
P.profile_id = TH.profile_id
where 
p.marital_status = 'Y'
and TH.rent>9000

--Write a query to display profile id, full name, phone, email id, city, house id, move_in_date , move_out date, rent,
--total number of referrals made, latest employer and the occupational category of all the tenants living in Bangalore or Pune 
--in the time period of jan 2015 to jan 2016 sorted by their rent in descending order

use Project_Data

Select  P.profile_id,CONCAT(first_name,last_name)as Full_Name,p.phone as Contact_Number,p.email_id,
P.city,TH.house_id,TH.move_in_date,TH.move_out_date,TH.rent,Ref.referral_valid as total_number,
EMP.latest_employer,EMP.occupation_category
from Profiles P
join
TenancyHistory TH
on
P.profile_id = TH.profile_id
join
Referrals Ref 
on
TH.profile_id = Ref.ref_id
Join
Employment_details EMP
on
Ref.ref_id = EMP.profile_id
where P.city in ('Bangalore','Pune')
and TH.move_in_date between '2015-01-01' and '2016-01-01'
order by rent Desc



--Write a sql snippet to find the full_name, email_id, phone number and referral code of all
--the tenants who have referred more than once.
--Also find the total bonus amount they should receive given that the bonus gets calculated only for valid referrals.

use Project_Data

Select  P.profile_id,CONCAT(first_name,last_name)as Full_Name,p.phone as Contact_Number,p.email_id,
P.referral_code,count(Ref.referral_valid) as total_referrals,sum(Ref.referrer_bonus_amount) as Total_bonus
From Profiles P
join
Referrals Ref
on 
P.profile_id=Ref.Referrer_id
Group BY P.profile_id,p.first_name,P.last_name,P.phone,P.email_id,p.referral_code
having count(Ref.referral_valid)>1


Use Project_Data
--Write a query to find the rent generated from each city and also the total of all cities.

Select Coalesce(ad.city,'Total'),SUM(TH.rent)as Each_city_total
From Addresses ad
join
TenancyHistory TH
on 
ad.house_id= TH.house_id
Group by ad.city 
with Rollup  

--Create a view 'vw_tenant' find profile_id,rent,move_in_date,house_type,beds_vacant,description and
--city of tenants who shifted on/after 30th april 2015 and are living in houses having vacant beds and its address.

Create View
vw_tenant
as
select TH.profile_id,hs.house_type,TH.move_in_date,ad.description,ad.city,hs.beds_vacant,TH.rent
From TenancyHistory TH
inner join
Profiles P
on
TH.profile_id = P.profile_id
inner join
Addresses ad
on
P.city = ad.city
Inner join
Houses hs
on
ad.house_id = hs.house_id
where hs.beds_vacant>=1
and Th.move_in_date > '2015-04-30' 


Select*From vw_tenant
Drop View vw_tenant


--Write a code to extend the valid_till date for a month of tenants who have referred more
--than one time


Select ref_id,Referrer_id,referral_valid,valid_from,
DATEADD(mm,1,valid_till) as new_valid_date
into New_Referrals
From Referrals
where Referrer_id in (Select Referrer_id From Referrals
Group by Referrer_id
having count(Referrer_id)>1)

Select * from New_Referrals 
Select * From Referrals
Update r
Set r.valid_till = DATEADD(MONTH,1,r.valid_till)
From Referrals r
join
New_Referrals N
on 
r.ref_id=n.ref_id

Drop Table New_Referrals

 --Write a query to get Profile ID, Full Name, Contact Number of the tenants along with a new column 'Customer Segment' 
 --wherein if the tenant pays rent greater than 10000, 
 --tenant falls in Grade A segment, if rent is between 7500 to 10000, tenant falls in Grade B else in Grade C

 USE Project_Data

 Select P.Profile_id,CONCAT(first_name,last_name)as Full_Name,p.phone as Contact,TH.rent,
 case when TH.rent >10000 then 'Grade A'
 when TH.rent between 7500 and 10000 then 'Grade B'
 else 'Grade C'
 END AS Customer_Segment
 From TenancyHistory TH
 join
 Profiles P
 on 
TH.profile_id = P.profile_id



--Write a query to get Fullname, Contact, City and House Details of the tenants who have not
--referred even once

Select P.Profile_id,CONCAT(first_name,last_name)as Full_Name,p.phone as Contact,P.city,h.house_id,
h.house_type,h.bhk_type,h.bed_count,h.furnishing_type,h.beds_vacant
From Profiles P
Full join
Referrals Ref
on
P.profile_id= Ref.Referrer_id
join
TenancyHistory TH
on
P.profile_id= TH.profile_id
join
Houses H 
on
TH.house_id = H.house_id
where Ref.Referrer_id is NULL


--Write a query to get the house details of the house having highest occupancy

select * from Houses
where bed_count - beds_vacant = (select max(bed_count - beds_vacant) from Houses)