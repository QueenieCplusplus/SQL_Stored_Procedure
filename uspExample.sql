CREATE PROCEDURE `uspExample`(
	id int
)
BEGIN

    select tA.userId, tA.news
    from aTable as tA
    where tA.userId = id;
End
