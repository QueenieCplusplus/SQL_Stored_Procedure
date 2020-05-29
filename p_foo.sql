-- 2020.5/29 fri by Vivy Chen

-- to define param as IN, INOUT, or OUT.
-- to seperate the param by using comma.
-- then to declaire the data type of the param.

----------------------------------------------
-- template
----------------------------------------------

create pro_foo_name (IN a int, IN b int)
language SQL

BEGIN

    if 

    else


    end if

END

----------------------------------------------
-- example
----------------------------------------------

create procedure p_foo_1 (In a int, OUT b int)
language SQL

BEGIN

    select table_foo(col_f) into col_b from table_boo

END

----------------------------------------------
-- example
----------------------------------------------

-- 呼叫預存函數，所指定的參數需要為變數，即便是 IN 參數。
-- 版本過後，可以利用 IN 參數指定常數值為其值。

create procedure p_member_money() language SQL
BEGIN
    declare base_amount int;
    declare vip_amount int;
    set base_amount = 500;
    set vip_amount = 10000;
    call p_member_money(base_amount, vip_amount); 
END