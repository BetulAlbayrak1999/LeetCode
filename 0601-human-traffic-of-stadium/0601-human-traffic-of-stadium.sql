/* Write your PL/SQL query statement below */

with ds as
    (
        select id, visit_date, people, id-rownum grp
        from Stadium
        where people >= 100
    ),
    ds_ctn as 
    (
        select grp, count(grp) ctn  
        from 
            (select id, visit_date, people, id-rownum grp
            from Stadium
            where people >= 100)
        having count(grp) >= 3
        group by grp)
    select ds.id "id", to_char(ds.visit_date, 'yyyy-mm-dd') "visit_date", ds.people "people"
    from ds, ds_ctn
    where ds.grp = ds_ctn.grp
    order by ds.visit_date asc;
