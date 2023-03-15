select t2.id from weather t1 , weather t2 
where t2.temperature > t1.temperature 
and to_date(t2.recorddate) - to_date(t1.recorddate)=1 ;