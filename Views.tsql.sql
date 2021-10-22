SELECT * FROM pytest.monthly_bills;

Create view pytest.Monthly_bills_vw
as 
select 
Item_id,
Item_name
from pytest.monthly_bills;


select * from pytest.Monthly_bills_vw;