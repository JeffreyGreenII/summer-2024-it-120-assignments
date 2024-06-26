create table jeffreys_table (
    name varchar(500),
    favorite_food varchar(30) CHECK (
        favorite_food in (
            'pizza',
            'ramen',
            'baguette',
            'beans and toast'
        )
    )
);

insert into jeffreys_table values ('jeffrey', 'pizza'); -- should insert
insert into jeffreys_table values ('not_jeffrey', 'not pizza'); -- should fail

select * from jeffreys_table;