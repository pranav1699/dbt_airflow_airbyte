{{config(materialized="table") }}
with student_country_details as(
    select * from {{ source('airbytes_test', 'dbt_test') }}
),
final as (
    select * from student_country_details where country  = 'India'
)
select * from final