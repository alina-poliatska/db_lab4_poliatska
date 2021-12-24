CREATE TRIGGER author_name_insert 
AFTER INSERT ON author
FOR EACH ROW EXECUTE FUNCTION author_name()

CREATE OR REPLACE FUNCTION author_name() RETURNS trigger AS
$$
     BEGIN
          UPDATE author 
          SET name = 'Mr. ' || name WHERE author.author_id = NEW.author_id; 
      RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';