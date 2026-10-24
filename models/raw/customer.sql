{{
    config(
        materialized='view',
        query_tag='DBT'
    )
}}
select customer_id as custid,first_name,last_name,concat_ws(' ',first_name,last_name) as full_name,email,phone as phn_number,city,state from snowflake_dbt_data.sf_schema.customer
