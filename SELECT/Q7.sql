CREATE VIEW HIGH_RATING_ID AS
(SELECT PERSON_ID, count(c.title_id) AS TITLE_NUM
FROM CREW AS C JOIN RATINGS AS R ON C.TITLE_ID=R.TITLE_ID AND R.RATING > 8
WHERE C.CATEGORY='composer'
GROUP BY PERSON_ID
HAVING COUNT(C.TITLE_ID) > 10);

SELECT NAME 
FROM HIGH_RATING_ID H JOIN PEOPLE  P ON H.PERSON_ID=P.PERSON_ID;