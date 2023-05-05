SELECT COUNT(DISTINCT PEOPLE.PERSON_ID)
FROM CREW JOIN PEOPLE ON CREW.PERSON_ID=PEOPLE.PERSON_ID
WHERE CATEGORY='ACTRESS' AND EXISTS
(SELECT TITLE_ID FROM CREW JOIN PEOPLE ON CREW.PERSON_ID=PEOPLE.PERSON_ID
WHERE NAME='Robert Downey Jr.');