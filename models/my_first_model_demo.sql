{{ config(materialized='view') }}
with source_data as (
select  * from dbc.tablesv
where Databasename='SYSUDTLIB'
)

select * from source_data