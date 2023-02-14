Create database SalesChannelData
use SalesChannelData
--select * from Tbl_SalesSummary order by SalesDate

/*
CREATE TABLE [dbo].[Tbl_SalesSummary](
	[Platform] [nvarchar](50) NOT NULL,
	[SalesDate] [date] NOT NULL,
	[PrdCategory] [nvarchar](50) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Sales_Qty] [decimal](18, 0) NOT NULL,
	[Sales_Amount] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

Insert into Tbl_SalesSummary values ('Flipkart', '01-Jan-2022', 'Gents Regular', 'Cotton King', 'P0001', '3012', '10542000')
Insert into Tbl_SalesSummary values ('Flipkart', '07-Jan-2022', 'Ladies Apparel', 'AND', 'P0008', '3253', '32530000')
Insert into Tbl_SalesSummary values ('Flipkart', '13-Jan-2022', 'Gents Regular', 'Allen Solly', 'P0005', '3001', '9753250')
Insert into Tbl_SalesSummary values ('Flipkart', '19-Jan-2022', 'Ladies Apparel', 'Zara', 'P0006', '3812', '30496000')
Insert into Tbl_SalesSummary values ('Flipkart', '25-Jan-2022', 'Ladies Apparel', 'Zara', 'P0006', '3365', '26920000')
Insert into Tbl_SalesSummary values ('Flipkart', '31-Jan-2022', 'Ladies Apparel', 'W for Women', 'P0009', '4717', '23585000')
Insert into Tbl_SalesSummary values ('Flipkart', '06-Feb-2022', 'Gents Regular', 'Cotton King', 'P0001', '2999', '10496500')
Insert into Tbl_SalesSummary values ('Flipkart', '12-Feb-2022', 'Gents Regular', 'Wrangler', 'P0003', '3211', '17981600')
Insert into Tbl_SalesSummary values ('Flipkart', '18-Feb-2022', 'Gents Regular', 'Wrangler', 'P0003', '2670', '14952000')
Insert into Tbl_SalesSummary values ('Flipkart', '24-Feb-2022', 'Ladies Apparel', 'Zara', 'P0006', '4017', '32136000')
Insert into Tbl_SalesSummary values ('Flipkart', '02-Mar-2022', 'Ladies Apparel', 'Zara', 'P0006', '2692', '21536000')
Insert into Tbl_SalesSummary values ('Flipkart', '08-Mar-2022', 'Gents Regular', 'Wrangler', 'P0003', '2620', '14672000')
Insert into Tbl_SalesSummary values ('Flipkart', '14-Mar-2022', 'Gents Apparel', 'Peter England', 'P0004', '4686', '19681200')
Insert into Tbl_SalesSummary values ('Flipkart', '20-Mar-2022', 'Gents Regular', 'Cotton King', 'P0001', '4601', '16103500')
Insert into Tbl_SalesSummary values ('Flipkart', '26-Mar-2022', 'Ladies Apparel', 'AND', 'P0008', '3051', '30510000')
Insert into Tbl_SalesSummary values ('Flipkart', '01-Apr-2022', 'Gents Apparel', 'Peter England', 'P0004', '4950', '20790000')
Insert into Tbl_SalesSummary values ('Flipkart', '07-Apr-2022', 'Gents Apparel', 'Peter England', 'P0004', '3276', '13759200')
Insert into Tbl_SalesSummary values ('Flipkart', '13-Apr-2022', 'Gents Apparel', 'Peter England', 'P0004', '4261', '17896200')
Insert into Tbl_SalesSummary values ('Flipkart', '19-Apr-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3208', '22456000')
Insert into Tbl_SalesSummary values ('Flipkart', '25-Apr-2022', 'Ladies Apparel', 'Zara', 'P0006', '3631', '29048000')
Insert into Tbl_SalesSummary values ('Flipkart', '01-May-2022', 'Gents Regular', 'Wrangler', 'P0003', '2057', '11519200')
Insert into Tbl_SalesSummary values ('Flipkart', '07-May-2022', 'Gents Regular', 'Cotton King', 'P0001', '2343', '8200500')
Insert into Tbl_SalesSummary values ('Flipkart', '13-May-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '3695', '16627500')
Insert into Tbl_SalesSummary values ('Flipkart', '19-May-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4749', '15434250')
Insert into Tbl_SalesSummary values ('Flipkart', '25-May-2022', 'Ladies Apparel', 'AND', 'P0008', '4504', '45040000')
Insert into Tbl_SalesSummary values ('Flipkart', '31-May-2022', 'Gents Apparel', 'Peter England', 'P0004', '2311', '9706200')
Insert into Tbl_SalesSummary values ('Flipkart', '06-Jun-2022', 'Ladies Apparel', 'Zara', 'P0006', '2289', '18312000')
Insert into Tbl_SalesSummary values ('Flipkart', '12-Jun-2022', 'Gents Regular', 'Cotton King', 'P0001', '3711', '12988500')
Insert into Tbl_SalesSummary values ('Flipkart', '18-Jun-2022', 'Ladies Apparel', 'Zara', 'P0006', '3032', '24256000')
Insert into Tbl_SalesSummary values ('Flipkart', '24-Jun-2022', 'Gents Regular', 'Wrangler', 'P0003', '4308', '24124800')
Insert into Tbl_SalesSummary values ('Flipkart', '30-Jun-2022', 'Ladies Apparel', 'W for Women', 'P0009', '4619', '23095000')
Insert into Tbl_SalesSummary values ('Flipkart', '06-Jul-2022', 'Ladies Apparel', 'W for Women', 'P0009', '2319', '11595000')
Insert into Tbl_SalesSummary values ('Flipkart', '12-Jul-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4250', '13812500')
Insert into Tbl_SalesSummary values ('Flipkart', '18-Jul-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '4625', '20812500')
Insert into Tbl_SalesSummary values ('Flipkart', '24-Jul-2022', 'Gents Regular', 'Wrangler', 'P0003', '4447', '24903200')
Insert into Tbl_SalesSummary values ('Flipkart', '30-Jul-2022', 'Ladies Apparel', 'Zara', 'P0006', '4765', '38120000')
Insert into Tbl_SalesSummary values ('Flipkart', '05-Aug-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4308', '14001000')
Insert into Tbl_SalesSummary values ('Flipkart', '11-Aug-2022', 'Ladies Apparel', 'AND', 'P0008', '4422', '44220000')
Insert into Tbl_SalesSummary values ('Flipkart', '17-Aug-2022', 'Gents Regular', 'Allen Solly', 'P0005', '2695', '8758750')
Insert into Tbl_SalesSummary values ('Flipkart', '23-Aug-2022', 'Gents Apparel', 'Peter England', 'P0004', '4085', '17157000')
Insert into Tbl_SalesSummary values ('Flipkart', '29-Aug-2022', 'Ladies Apparel', 'Zara', 'P0006', '3328', '26624000')
Insert into Tbl_SalesSummary values ('Flipkart', '04-Sep-2022', 'Gents Apparel', 'Peter England', 'P0004', '2305', '9681000')
Insert into Tbl_SalesSummary values ('Flipkart', '10-Sep-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3122', '21854000')
Insert into Tbl_SalesSummary values ('Flipkart', '16-Sep-2022', 'Gents Regular', 'Wrangler', 'P0003', '2002', '11211200')
Insert into Tbl_SalesSummary values ('Flipkart', '22-Sep-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '4007', '28049000')
Insert into Tbl_SalesSummary values ('Flipkart', '28-Sep-2022', 'Ladies Apparel', 'Zara', 'P0006', '3433', '27464000')
Insert into Tbl_SalesSummary values ('Flipkart', '04-Oct-2022', 'Gents Regular', 'Wrangler', 'P0003', '4709', '26370400')
Insert into Tbl_SalesSummary values ('Flipkart', '10-Oct-2022', 'Ladies Apparel', 'AND', 'P0008', '2272', '22720000')
Insert into Tbl_SalesSummary values ('Flipkart', '16-Oct-2022', 'Gents Regular', 'Wrangler', 'P0003', '3568', '19980800')
Insert into Tbl_SalesSummary values ('Flipkart', '22-Oct-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '4649', '20920500')
Insert into Tbl_SalesSummary values ('Flipkart', '28-Oct-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '4023', '28161000')
Insert into Tbl_SalesSummary values ('Flipkart', '03-Nov-2022', 'Gents Regular', 'Cotton King', 'P0001', '2062', '7217000')
Insert into Tbl_SalesSummary values ('Flipkart', '09-Nov-2022', 'Gents Apparel', 'Peter England', 'P0004', '3358', '14103600')
Insert into Tbl_SalesSummary values ('Flipkart', '15-Nov-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '2362', '10629000')
Insert into Tbl_SalesSummary values ('Flipkart', '21-Nov-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4960', '16120000')
Insert into Tbl_SalesSummary values ('Flipkart', '27-Nov-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '2950', '13275000')
Insert into Tbl_SalesSummary values ('Flipkart', '03-Dec-2022', 'Gents Apparel', 'Peter England', 'P0004', '4292', '18026400')
Insert into Tbl_SalesSummary values ('Flipkart', '09-Dec-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '4775', '33425000')
Insert into Tbl_SalesSummary values ('Flipkart', '15-Dec-2022', 'Gents Regular', 'Wrangler', 'P0003', '4852', '27171200')
Insert into Tbl_SalesSummary values ('Flipkart', '21-Dec-2022', 'Gents Regular', 'Allen Solly', 'P0005', '3975', '12918750')
Insert into Tbl_SalesSummary values ('Flipkart', '27-Dec-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '4375', '19687500')
Insert into Tbl_SalesSummary values ('Amazon', '02-Jan-2022', 'Gents Apparel', 'Peter England', 'P0004', '4277', '17963400')
Insert into Tbl_SalesSummary values ('Amazon', '08-Jan-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4399', '14296750')
Insert into Tbl_SalesSummary values ('Amazon', '14-Jan-2022', 'Gents Regular', 'Wrangler', 'P0003', '2549', '14274400')
Insert into Tbl_SalesSummary values ('Amazon', '20-Jan-2022', 'Gents Apparel', 'Peter England', 'P0004', '2898', '12171600')
Insert into Tbl_SalesSummary values ('Amazon', '26-Jan-2022', 'Ladies Apparel', 'W for Women', 'P0009', '4514', '22570000')
Insert into Tbl_SalesSummary values ('Amazon', '01-Feb-2022', 'Gents Apparel', 'Peter England', 'P0004', '3934', '16522800')
Insert into Tbl_SalesSummary values ('Amazon', '07-Feb-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3380', '23660000')
Insert into Tbl_SalesSummary values ('Amazon', '13-Feb-2022', 'Gents Regular', 'Wrangler', 'P0003', '2844', '15926400')
Insert into Tbl_SalesSummary values ('Amazon', '19-Feb-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4416', '14352000')
Insert into Tbl_SalesSummary values ('Amazon', '25-Feb-2022', 'Gents Regular', 'Wrangler', 'P0003', '2701', '15125600')
Insert into Tbl_SalesSummary values ('Amazon', '03-Mar-2022', 'Gents Regular', 'Cotton King', 'P0001', '4893', '17125500')
Insert into Tbl_SalesSummary values ('Amazon', '09-Mar-2022', 'Gents Apparel', 'Peter England', 'P0004', '2263', '9504600')
Insert into Tbl_SalesSummary values ('Amazon', '15-Mar-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '2819', '19733000')
Insert into Tbl_SalesSummary values ('Amazon', '21-Mar-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3027', '21189000')
Insert into Tbl_SalesSummary values ('Amazon', '27-Mar-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '3831', '17239500')
Insert into Tbl_SalesSummary values ('Amazon', '02-Apr-2022', 'Ladies Apparel', 'AND', 'P0008', '2576', '25760000')
Insert into Tbl_SalesSummary values ('Amazon', '08-Apr-2022', 'Ladies Apparel', 'Zara', 'P0006', '2278', '18224000')
Insert into Tbl_SalesSummary values ('Amazon', '14-Apr-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3955', '27685000')
Insert into Tbl_SalesSummary values ('Amazon', '20-Apr-2022', 'Ladies Apparel', 'W for Women', 'P0009', '3397', '16985000')
Insert into Tbl_SalesSummary values ('Amazon', '26-Apr-2022', 'Gents Regular', 'Cotton King', 'P0001', '4029', '14101500')
Insert into Tbl_SalesSummary values ('Amazon', '02-May-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3425', '23975000')
Insert into Tbl_SalesSummary values ('Amazon', '08-May-2022', 'Gents Regular', 'Cotton King', 'P0001', '3962', '13867000')
Insert into Tbl_SalesSummary values ('Amazon', '14-May-2022', 'Ladies Apparel', 'Zara', 'P0006', '4575', '36600000')
Insert into Tbl_SalesSummary values ('Amazon', '20-May-2022', 'Gents Regular', 'Cotton King', 'P0001', '3194', '11179000')
Insert into Tbl_SalesSummary values ('Amazon', '26-May-2022', 'Gents Regular', 'Wrangler', 'P0003', '3693', '20680800')
Insert into Tbl_SalesSummary values ('Amazon', '01-Jun-2022', 'Ladies Apparel', 'AND', 'P0008', '2890', '28900000')
Insert into Tbl_SalesSummary values ('Amazon', '07-Jun-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '2787', '12541500')
Insert into Tbl_SalesSummary values ('Amazon', '13-Jun-2022', 'Gents Regular', 'Cotton King', 'P0001', '4148', '14518000')
Insert into Tbl_SalesSummary values ('Amazon', '19-Jun-2022', 'Ladies Apparel', 'W for Women', 'P0009', '3346', '16730000')
Insert into Tbl_SalesSummary values ('Amazon', '25-Jun-2022', 'Gents Regular', 'Wrangler', 'P0003', '4650', '26040000')
Insert into Tbl_SalesSummary values ('Amazon', '01-Jul-2022', 'Gents Regular', 'Cotton King', 'P0001', '4395', '15382500')
Insert into Tbl_SalesSummary values ('Amazon', '07-Jul-2022', 'Gents Regular', 'Wrangler', 'P0003', '3600', '20160000')
Insert into Tbl_SalesSummary values ('Amazon', '13-Jul-2022', 'Gents Regular', 'Wrangler', 'P0003', '2437', '13647200')
Insert into Tbl_SalesSummary values ('Amazon', '19-Jul-2022', 'Gents Apparel', 'Peter England', 'P0004', '2863', '12024600')
Insert into Tbl_SalesSummary values ('Amazon', '25-Jul-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '2534', '17738000')
Insert into Tbl_SalesSummary values ('Amazon', '31-Jul-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '2544', '17808000')
Insert into Tbl_SalesSummary values ('Amazon', '06-Aug-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '4620', '32340000')
Insert into Tbl_SalesSummary values ('Amazon', '12-Aug-2022', 'Gents Regular', 'Cotton King', 'P0001', '4220', '14770000')
Insert into Tbl_SalesSummary values ('Amazon', '18-Aug-2022', 'Gents Regular', 'Allen Solly', 'P0005', '3165', '10286250')
Insert into Tbl_SalesSummary values ('Amazon', '24-Aug-2022', 'Gents Regular', 'Allen Solly', 'P0005', '4308', '14001000')
Insert into Tbl_SalesSummary values ('Amazon', '30-Aug-2022', 'Gents Regular', 'Cotton King', 'P0001', '4688', '16408000')
Insert into Tbl_SalesSummary values ('Amazon', '05-Sep-2022', 'Gents Regular', 'Allen Solly', 'P0005', '2982', '9691500')
Insert into Tbl_SalesSummary values ('Amazon', '11-Sep-2022', 'Ladies Apparel', 'AND', 'P0008', '2659', '26590000')
Insert into Tbl_SalesSummary values ('Amazon', '17-Sep-2022', 'Ladies Apparel', 'W for Women', 'P0009', '2247', '11235000')
Insert into Tbl_SalesSummary values ('Amazon', '23-Sep-2022', 'Gents Regular', 'Allen Solly', 'P0005', '2031', '6600750')
Insert into Tbl_SalesSummary values ('Amazon', '29-Sep-2022', 'Gents Regular', 'Wrangler', 'P0003', '3909', '21890400')
Insert into Tbl_SalesSummary values ('Amazon', '05-Oct-2022', 'Ladies Apparel', 'W for Women', 'P0009', '4532', '22660000')
Insert into Tbl_SalesSummary values ('Amazon', '11-Oct-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '4267', '19201500')
Insert into Tbl_SalesSummary values ('Amazon', '17-Oct-2022', 'Gents Regular', 'Cotton King', 'P0001', '3245', '11357500')
Insert into Tbl_SalesSummary values ('Amazon', '23-Oct-2022', 'Ladies Apparel', 'Zara', 'P0006', '3637', '29096000')
Insert into Tbl_SalesSummary values ('Amazon', '29-Oct-2022', 'Ladies Apparel', 'FabIndia', 'P0007', '3880', '27160000')
Insert into Tbl_SalesSummary values ('Amazon', '04-Nov-2022', 'Gents Regular', 'Allen Solly', 'P0005', '3093', '10052250')
Insert into Tbl_SalesSummary values ('Amazon', '10-Nov-2022', 'Gents Regular', 'Wrangler', 'P0003', '3752', '21011200')
Insert into Tbl_SalesSummary values ('Amazon', '16-Nov-2022', 'Gents Regular', 'Wrangler', 'P0003', '3965', '22204000')
Insert into Tbl_SalesSummary values ('Amazon', '22-Nov-2022', 'Gents Apparel', 'Peter England', 'P0004', '2615', '10983000')
Insert into Tbl_SalesSummary values ('Amazon', '28-Nov-2022', 'Ladies Apparel', 'AND', 'P0008', '4037', '40370000')
Insert into Tbl_SalesSummary values ('Amazon', '04-Dec-2022', 'Ladies Apparel', 'Zara', 'P0006', '2913', '23304000')
Insert into Tbl_SalesSummary values ('Amazon', '10-Dec-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '3933', '17698500')
Insert into Tbl_SalesSummary values ('Amazon', '16-Dec-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '2458', '11061000')
Insert into Tbl_SalesSummary values ('Amazon', '22-Dec-2022', 'Ladies Apparel', 'AND', 'P0008', '4702', '47020000')
Insert into Tbl_SalesSummary values ('Amazon', '28-Dec-2022', 'Gents Apparel', 'Van Heusen', 'P0002', '4708', '21186000')



*/


/* Q 1
 Find platform doing highest business (till date)?
 use different types of formating.

 EXPECTED OUTPUT
PLATFORM	totalRevenue_Number	totalRevenue_Currency	totalRevenue_Format
Flipkart	1,234,137,700.00	$1,234,137,700.00	1,234,137,700
 */

 --WRITE YOUR QUERY BELOW



/* Q 2
Find number of transactions done in each month ?

Number of rows = 12
EXPECTED OUTPUT
SalesYear	SalesMonth	#Transactions
2022	1	11
2022	2	9
2022	3	10
2022	4	10
2022	5	11
2022	6	10
2022	7	11
2022	8	10
2022	9	10
2022	10	10
2022	11	10
2022	12	10
-*/
--WRITE YOUR QUERY BELOW



/* Q 3
Find number of transactions done in each month for each Platform. 
must order in chronological sequence as shown
use some date functions..

Number of rows = 24
EXPECTED OUTPUT
Platform	SalesYear	SalesMonth	#Transactions
Amazon	2022	January	5
Amazon	2022	February	5
Amazon	2022	March	5
Amazon	2022	April	5
Amazon	2022	May	5
Amazon	2022	June	5
Amazon	2022	July	6
Amazon	2022	August	5
Amazon	2022	September	5
Amazon	2022	October	5
Amazon	2022	November	5
Amazon	2022	December	5
Flipkart	2022	January	6
Flipkart	2022	February	4
Flipkart	2022	March	5
Flipkart	2022	April	5
Flipkart	2022	May	6
Flipkart	2022	June	5
Flipkart	2022	July	5
Flipkart	2022	August	5
Flipkart	2022	September	5
Flipkart	2022	October	5
Flipkart	2022	November	5
Flipkart	2022	December	5
*/
--WRITE YOUR QUERY BELOW



/* Q 4
find platform doing highest business in each month of the operation
use row_number, partition concepts

Number of rows = 12
EXPECTED OUTPUT
SaleMonthName	Platform	#Transactions
January	Flipkart	6
February	Amazon	5
March	Amazon	5
April	Amazon	5
May	Flipkart	6
June	Amazon	5
July	Amazon	6
August	Amazon	5
September	Amazon	5
October	Amazon	5
November	Amazon	5
December	Amazon	5

*/
--WRITE YOUR QUERY BELOW



/* Q 5
For each brand, which was the best month of sales?
another example for row_number, partition and date function

Number of rows = 9
EXPECTED OUTPUT
BrandName	SaleMonthName	SalesAmount
Allen Solly	August	47047000
AND	December	47020000
Cotton King	May	33246500
FabIndia	October	55321000
Peter England	April	52445400
Van Heusen	December	69633000
W for Women	January	46155000
Wrangler	February	63985600
Zara	January	57416000
*/
--WRITE YOUR QUERY BELOW



/* Q 6 For each brand, which are top two months of Sales? 

Number of rows = 18
EXPECTED OUTPUT
BrandName	SaleMonthName	MonthNumber	SalesAmount
Allen Solly	August	8	47047000
Allen Solly	November	11	26172250
AND	December	12	47020000
AND	May	5	45040000
Cotton King	May	5	33246500
Cotton King	March	3	33229000
FabIndia	October	10	55321000
FabIndia	April	4	50141000
Peter England	April	4	52445400
Peter England	January	1	30135000
Van Heusen	December	12	69633000
Van Heusen	October	10	40122000
W for Women	January	1	46155000
W for Women	June	6	39825000
Wrangler	February	2	63985600
Wrangler	July	7	58710400
Zara	January	1	57416000
Zara	April	4	47272000
*/

--WRITE YOUR QUERY BELOW
-- step 1 for all brands get data for each month. 
-- and order it by Brand, SalesAmount, month
-- Then.....





/* Q 7
For each month, find how many brands have peak sales..

Number of rows = 7

EXPECTED OUTPUT
January	2
February	1
April	1
May	1
August	1
October	1
December	2

Version 2
Number of rows = 12

January	2
February	1
March 0
April	1
May	1
June 0
July 0
August	1
September 0
October	1
November 0
December 2

*/
--WRITE YOUR QUERY BELOW


/* Q 8. For each platform, which brand has the most transactions?

Number of Rows = 3
EXPECTED OUTPUT
PLATFORM	BrandName	#Trxns
Amazon	Wrangler	10
Flipkart	Zara	10
Flipkart	Wrangler	10
*/
--WRITE YOUR QUERY BELOW


/* Q 9
For each brand, in which months sales crossed 130000
NO EXPCTED OUTPUT GIVEN

*/
--WRITE YOUR QUERY BELOW


/*Q 10. 
find number of occurrences for each brand where it monthly sales crossed 130k
NO EXPCTED OUTPUT GIVEN

*/
--WRITE YOUR QUERY BELOW

/* Q 11
Find Brands which have avg monthly sales > 30000000 
or have aggreagate sales > 230000000
NO EXPCTED OUTPUT GIVEN

*/
--WRITE YOUR QUERY BELOW

