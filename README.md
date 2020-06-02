# SQL_Stored_Procedure
預存程序

# Check Whitelist for me

    check my present IP addr by browsing the google

    search the key word:

    "which is my (public) IP"

# Start SQL Server

    mysql -u < account name > -p < port number > -h <IP>
    
    //port number including 3306 and 3307 
    
    /r
    
    /q


# Create Stored Procedure 建立預存程序

  Set Schema to Default, then start to code in Script.

    -- to define param as IN, INOUT, or OUT.
    -- to seperate the param by using comma.
    -- then to declaire the data type of the param.

    create pro_foo_name (param)

    BEGIN

        if 

        else


        end if

    END
    
# Alter Stored Procedure 變更現存的預存函數

 https://www.mysqltutorial.org/mysql-stored-procedure/alter-stored-procedure/
 
* Right-click the stored procedure that you want to change and select Alter Stored Procedure.
    
# Example.sql

    CREATE PROCEDURE `uspExample`(
        id int /* 備註說明 */
    )
    BEGIN

        select tA.userId, tA.news
        from aTable as tA
        where tA.userId = id;
    End
    
    # 備註說明
    
    
# Example2.sql

    CREATE PROCEDURE GetOrderAmount()
    BEGIN
        SELECT 
            SUM(quantityOrdered * priceEach) 
        FROM orderDetails;
    END
    
# Example3.sql 

    CREATE DEFINER=`account_name`@`my_ip_now` PROCEDURE `upsTest`(
        Id int /* or using varchar data type */
    )
    BEGIN

        select u.lineId, u.userId, u.userName, u.createTime, u.feeCharged, u.RedPoint 
        from user as u
        where u.lineId = lineId;

    END
    
# call function / call stored procedure 呼叫函數或呼叫預存函數

    call ups_name(input)

    call ups_name('input')

    call ups_name("input")
  
# Insert-Statement 輸入語句

    Insert INTO tabel_name (col) values(val)
    
    
# Call Stored Procedure 呼叫預存函數

    -- 呼叫預存函數，所指定的參數需要為變數，即便是 IN 參數。
    -- 版本過後，可以利用 IN 參數指定常數值為其值。

    create procedure p_member_money() 
    language SQL
    BEGIN
        declare base_amount int;
        declare vip_amount int;
        set base_amount = 500;
        set vip_amount = 10000;
        call p_member_money(base_amount, vip_amount); 
    END


-------------------------------------------------

    create procedure p_member_money(IN base_amount int , IN vip_amount int) 
    language SQL
    BEGIN
        set base_amount = 500;
        set vip_amount = 10000;
        call p_member_money(base_amount, vip_amount); 
    END
