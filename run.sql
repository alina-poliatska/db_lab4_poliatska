-- Trigger
INSERT INTO author(author_id, name) VALUES ('110', 'Hayao Miyazaki');
select * from author;

-- Function
DO $$
DECLARE rating_ DECIMAL := 8.6;
BEGIN
    RAISE INFO 'Manga with rating > %: %', rating_, get_manga_number(rating_);
END;
$$;

-- Procedure
CALL add_new_author(111, 'Tezuka, Osamu')
select * from author