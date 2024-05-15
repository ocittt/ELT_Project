{% set film_title = 'Parasite' %}


SELECT *
FROM {{ ref('films') }}
WHERE title = '{{ film_title }}'