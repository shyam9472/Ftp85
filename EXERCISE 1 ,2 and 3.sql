select maritalstatus fr

SELECT AGENTID,
		FIRSTNAME,
        LASTNAME,
        MARITALSTATUS,
        CASE MARITALSTATUS
          WHEN 0 THEN 'UNMARRIED'
          WHEN 1 THEN 'MARRIED'
	END 'STATUS' 
    FROM AGENT
    
    
SELECT AGENTID,
		FIRSTNAME,
        LASTNAME,
        PAYMENTMODE,
        CASE PAYMENTMODE
          WHEN 1 THEN 'YEARLY'
          WHEN 2 THEN 'HALF YEARLY'
	END 'PM' 
    FROM AGENT
        
        SELECT FIRSTNAME FROM AGENT
        
        
        SELECT INSTR (FIRSTNAME, 'A') FROM AGENT
        
        
        SELECT LENGTH('ANSHUMAN')
        SELECT FIRSTNAME, LENGTH(FIRSTNAME) FROM AGENT
        
        SELECT UPPER('ANshuman')
        SELECT Lower('ANSHUMAN')
        
        SELECT Right('ANSHUMAN',4)
        SELECT left('ANSHUMAN',4)
        
        SELECT firstname,Right(firstname,4) from agent
        
        sELECT * FROM AGENT WHERE FIRSTNAME LIKE 'P%P'
        
         SELECT FIRSTNAME,Right(FIRSTNAME ,) FROM AGENT
         
          SELECT FIRSTNAME, 
           CASE FIRSTNAME 
           
           
           SELECT  CONCAT(UPPER(SUBSTRING(FIRSTNAME,1,1)) ,LOWER(SUBSTRING(FIRSTNAME,2,LENGTH(FIRSTNAME)))) FROM AGENT  ----->2
           
        SELECT LEFT('ANSHUMAN MISHRA',INSTR('ANSHUMAN MISHRA',' ')),SUBSTRING('ANSHUMAN MISHRA',INSTR('ANSHUMAN MISHRA',' '),LENGTH('ANSHUMAN MISHRA'))
        
      
         
        SELECT LEFT(fIRSTnAME,1),RIGHT(fIRSTNAME,1)
        FROM aGENt
        where LEFT(fIRSTnAME,1)=RIGHT(fIRSTNAME,1)
        
        
        SELECT LENGTH('MISISSIPI')-LENGTH(REPLACE('MISISSIPI','I',''))
        
        SELECT * FROM EMP
        
        
        EXERCISE 2----------------->
        
      1)  SELECT NAME FROM EMP WHERE INSTR(NAME,' ')=0
        
    2)  SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=1
    
    3)  SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2
    
    4) SELECT   LEFT(NAME,1) FROM EMP  +++++ SELECT NAME,LEFT(SUBSTRING(NAME,INSTR(NAME,' ')+1 ,INSTR(NAME,' ')+1),1) FROM EMP
    
      ----->
             SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2 AND 
      LEFT(NAME,1)=LEFT(SUBSTRING(NAME,INSTR(NAME,' ')+1 ,INSTR(NAME,' ')+1),1)
      
     
      5)
        
        
       SELECT NAME,LEFT(SUBSTRING(REVERSE(NAME),INSTR(REVERSE(NAME),' ')-1,1) FROM EMP
        
     
     
     SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2 AND 
        LEFT(NAME,1)=LEFT(SUBSTRING(NAME,INSTR(NAME,' ')+1 ,INSTR(NAME,' ')+1),1) AND
			LEFT(NAME,1)=  LEFT(SUBSTRING(REVERSE(NAME),INSTR(REVERSE(NAME),' ')-1,INSTR(REVERSE(NAME),' ')-1),1)
                  
                  
                SELECT NAME FROM EMP WHERE  LEFT(SUBSTRING(NAME,INSTR(NAME,' ')+1),1)
                
                SELECT RIGHT('MILLI',2)
                SELECT REVERSE(NAME),INSTR(REVERSE(NAME),' ')-1 FROM EMP
                
                
                select curdate()
                select curtime()
                
                select addDate(curdate(), interval 3 month )
                select addDate(curdate(), interval 6 day)
                select addDate(curdate(), interval 1 year)
                
                select * from agent
                
                select dob,addDate(dob,interval 3 month) from agent
                
				select date_format(curtime(), '%T')
        select date_format(curdate(), '%d %M %Y %w')
        select dayofmonth(curdate())
        select dayofweek(curdate())
        select quarter(curdate())
        select datediff(curdate(), '2018-11-13')
        select last_day(curdate())
        
        
        EXERCISE 3----------->
        
      2)  select  addDate(addDate(addDate(curdate(),interval 5 year),interval 6 MONTH) ,interval 7 DAY)
        
      1)  select addDate(addDate(last_day(curdate()), interval -1 month)),interval 1 DAY)
        
      3)  select datediff('2018-11-13',curdate()), date_format('2018-11-13','%W')
        
       5) select dob, date_format(dob,'%W') from agent
        \
        
        select dayofweek(curdate())
        select date_format(curdate(),'%m')
        
       4)select  adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 5-dayofweek(curdate()) day)'1st friday' ,
               
               adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 12-dayofweek(curdate()) day)'2nd friday' ,
                
                 adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 19-dayofweek(curdate()) day)'3rd friday' ,
                
                adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 26-dayofweek(curdate()) day)'4th friday' ,
                
                case '5th friday'
                
                when date_format(curdate(),'%m')=date_format(adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 33-dayofweek(curdate()) day) , '%m') 
                then adddate(adddate(addDate(last_day(curdate()), interval 1 day),interval -1 month) , 
                interval 33-dayofweek(curdate()) day
                
                end '5th friday'
                
6)select datediff(curdate(),'1996-09-15')/365 'years', mod(datediff(curdate(),'1996-09-15'),365)/30'month',
            
	mod(mod(datediff(curdate(),'1996-09-15'),365),30)'days'
        
               