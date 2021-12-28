-- Повертає кількість манг, рейтинг котрих вищий за заданий
CREATE OR REPLACE FUNCTION get_manga_number(rating_ DECIMAL)
RETURNS INT
LANGUAGE 'plpgsql'
AS $$
BEGIN
	RETURN (SELECT COUNT(*) FROM manga WHERE rating > rating_);
END;
$$;
