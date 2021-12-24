create table manga(
	manga_id int not null,
	title varchar(50) not null,
	date date,
	rating decimal(8,2)
);


alter table manga
add constraint PK_manga primary key (manga_id)

create table author(
	author_id int not null,
	name varchar(30) not null
);

alter table author
add constraint PK_author primary key (author_id)

create table manga_author(
	id int not null,
	manga_id int,
	author_id int
);

alter table manga_author
add foreign key (manga_id) references manga(manga_id),
add foreign key (author_id) references author(author_id)

create table genre(
	name varchar(30) not null
);

alter table genre
add constraint PK_genre primary key (name)

create table manga_genre(
	id int not null,
	manga_id int,
	genre_name varchar(30)
);

 references manga(manga_id)
 references genre(name)
 
 
alter table manga_genre
add constraint PK_manga_genre primary key (id),
add foreign key (manga_id) references manga(manga_id),
add foreign key (genre_name) references genre(name)