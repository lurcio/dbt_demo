with source as (

    select * from {{ ref('names_countries_1') }}

),

renamed as (

    select
        forename as first_name,
        surname as last_name,
        country

    from source

)

select * from renamed        
