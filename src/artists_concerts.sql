--Create a many-to-many relationship between the artists and concerts tables. (That is, an artist can be scheduled to perform at various concerts, and a 
--concert can have many artists performing in it.) To do this, create a join table called artists_concerts in src/artists_concerts.sql with the following fields:
--  1. A artist_id foreign key field with integer datatype that references artist_id from the artists table
--  2. A concert_id foreign key field with integer datatype that references concert_id from the concerts table
--  3. A scheduled_start_at field with a time datatype
--  4. A scheduled_end_at field with a time datatype
--  5. Create a composite key out of the artist_id and concert_id columns. Set this key as the primary key for the table.
CREATE TABLE IF NOT EXISTS artists_concerts (
    artist_id INTEGER REFERENCES artists(artist_id),
    concert_id INTEGER REFERENCES concerts(concert_id),
    scheduled_start_at TIME,
    scheduled_end_at TIME,
    PRIMARY KEY (artist_id, concert_id)
);