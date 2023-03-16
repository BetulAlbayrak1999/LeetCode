with ds as (
        select actor_id, director_id from (
        select actor_id, director_id, row_number() over(partition by actor_id, director_id order by actor_id) row_num
        from ActorDirector
            )
            where row_num >= 3
            ), 
    main_tab as 
            (select actor_id, director_id 
            from ActorDirector)
            select distinct ds.actor_id, ds.director_id  
            from main_tab, ds
            where ds.actor_id = main_tab.actor_id
            and ds.director_id = main_tab.director_id;