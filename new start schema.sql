
use storedb;
-- create fact tables


-- fact tables
-- One fact table should include data from the rental and rental_item tables with the rental_item data setting the granularity of the fact table.
CREATE temporary TABLE rental_facts AS
Select * from storedb.rental r
JOIN rental_item ri on ri.rental_id = r.rental_id;


-- Dimensiongenre
-- One dimension table should include the item table, inclusive of item ratings, rating agencies, genre, and item types from the common_lookup table data.
CREATE temporary TABLE rental_facts AS
Select * from storedb.item i
JOIN item_rating ir on i.item_rating_id = ir.item_rating_id
JOIN genre g on g.genre_id = i.genre_id
JOIN common_lookup cl on cl.common_lookup_id = i.item_type;



-- One dimension table should include the member account, contact information including address and telephone information.
CREATE temporary TABLE member_facts AS
Select * from storedb.rental r
JOIN rental_item ri on ri.rental_id = r.rental_id;
