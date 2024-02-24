with source as (

    select * from {{ ref('names_countries_3') }}

),

renamed as (

    select
        firstname as first_name,
        lastname as last_name,
        country

    from source

)

select * from renamed        
