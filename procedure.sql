CREATE OR REPLACE PROCEDURE add_new_author(
	author_id_ INT,
	name_ VARCHAR
)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO author (author_id, name)
		VALUES (author_id_, name_);
END;
$$;