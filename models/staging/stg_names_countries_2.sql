with source as (

    select * from {{ ref('names_countries_2') }}

),

renamed as (

    select
        first as first_name,
        last as last_name,
        country

    from source

)

select * from renamed        
