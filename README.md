# SQL_Stored_Procedure
預存程序

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
