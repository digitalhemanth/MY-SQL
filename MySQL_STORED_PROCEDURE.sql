SELECT * FROM pytest.monthly_bills;

use pytest;

DELIMITER $$
CREATE PROCEDURE GetMonthlybills()
BEGIN
    SELECT 
    Item_id,
    Item_name,
    cost+100 as cost
    FROM pytest.monthly_bills;
END$$
DELIMITER ;

drop procedure GetMonthlybills;

call GetMonthlybills();

